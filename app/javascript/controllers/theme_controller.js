import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
  }

  toggleTheme() {
    const getCookie = (name) => {
      let matches = document.cookie.match(new RegExp(
        "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
      ));
      return matches ? decodeURIComponent(matches[1]) : undefined;
    };
    const cookieName = "theme";
    const setCookie = function (name, value, expiryDays, domain, path, secure) {
      const exdate = new Date();
      exdate.setHours(
        exdate.getHours() +
          (typeof expiryDays !== "number" ? 365 : expiryDays) * 24
      );
      document.cookie =
        name +
        "=" +
        value +
        ";expires=" +
        exdate.toUTCString() +
        ";path=" +
        (path || "/")
      };

    if (getCookie(cookieName) === this.element.dataset.theme) {
      return
    }
    setTimeout(() => {
      document.body.classList.add('theme--' + this.element.dataset.theme)
      document.body.classList.remove('theme--' + getCookie(cookieName))
      setCookie(cookieName, this.element.dataset.theme);
    }, 100)
  }
}