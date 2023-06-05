import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})

export class HomePage {
  public phrases = ["Never Give Up On Your Dreams",
"Don't Be A Racist",
"Are You In Love?",
"One For All and All For One",
"Reinvent The Wheel As Needed",
"You Can Do What You Wanna Do",
"Your Hair Is Eye-catching",
"You Can Do Anything You Set In Your Mind To, Man",
"Go Talk To Her, Dude",
"I Don't Wanna Flip When I See You With Guys",
"Don't Get Me Wrong But, Why Don't You Go Fuck Yourself?",
"I'm Here To Rescue You",
"Are Your Handsome or Ugly Man/Girl? I Don't Give A Shit...Just Pursue Your Dreams",
"To Be Or Not To Be I Am That. A Random Man",
"Surprise Mothafucka",
"You Upset Me..."];

  public defaultPathOfImage: string = "../../assets/images/";
  public intactCookieImage: string = "intact-fortune-cookie.png";
  public brokenCookieImage: string = "broken-fortune-cookie.png";
  public imagePath: string = this.defaultPathOfImage.concat(this.intactCookieImage);

  public randomPhrase: number = 0; // Index of phrases array
  public secretPhrase: string = ""; 
  public prevSecretPhrase: string = "";

  constructor() {
  }
  
  breakFortuneCookie() {
    this.randomPhrase = Math.floor(Math.random() * this.phrases.length);
    if (!(this.imagePath == "../../assets/images/broken-fortune-cookie.png") && !(this.prevSecretPhrase == this.phrases[this.randomPhrase])) {
      this.imagePath = this.defaultPathOfImage.concat(this.brokenCookieImage); // '../../assets/images/broken-fortune-cookie.png'
      this.secretPhrase = this.phrases[this.randomPhrase];
      this.prevSecretPhrase = this.phrases[this.randomPhrase];
    }
  }
  
  newFortuneCookie() {
    this.imagePath = this.defaultPathOfImage.concat(this.intactCookieImage); // '../../assets/images/intact-fortune-cookie.png'
    this.secretPhrase = "";
  }
}
