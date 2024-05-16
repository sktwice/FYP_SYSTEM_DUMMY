<!DOCTYPE html>
<html lang="en" style="height: 100%;">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.0/css/bulma.min.css">
    <script src="https://kit.fontawesome.com/d21aa4c3aa.js" crossorigin="anonymous"></script>
    <style>
        .fontpassword {
            position: relative;
        }

        .fontpassword i{
            position: absolute;
            left: 15px;
            top: 40px;
            color: gray;
        }
        @media screen and (max-width: 1024px) {
            .desktop-only{
               display: none;
            }
        }
        .box {
            background-color: #fff;
            border-radius: 6px;
            box-shadow: 0 .5em 1em -0.125em rgba(10,10,10,.1),0 0px 0 1px rgba(10,10,10,.02);
            color: #4a4a4a;
            display: block;
            padding: 1.25rem;
            border-width: 10px;
        }
        .custom-border{
            background-color: #fff;
            border-radius: 6px;
            color: #4a4a4a;
            display: inline-block;
            border: 1px solid #dbdbdb;
            box-shadow: 0 .5em 1em -0.125em rgba(10,10,10,.1),0 0px 0 1px rgba(10,10,10,.02);
            width: 100%;
        }
        .custom-bg{
            background: rgb(211,217,220);
            background: linear-gradient(0deg, rgba(211,217,220,1) 0%, rgba(216,104,176,1) 100%);
        }
        .custom-bg2{
            background: rgb(221,158,97);
            background: linear-gradient(0deg, rgba(221,158,97,1) 0%, rgba(174,180,250,1) 100%);
        }
        .custom-bg3{
            background: rgb(221,158,97);
            background: linear-gradient(0deg, rgba(221,158,97,1) 0%, rgba(226,158,159,1) 100%);
        }
        .custom-bg4{
            background: rgb(235,188,160);
            background: linear-gradient(0deg, rgba(235,188,160,1) 0%, rgba(208,166,253,1) 100%);
        }
        .w-100{
            width:100%;
        }
        .h-100{
            height:100%;
        }
        table {
          margin: 0;
          padding: 0;
          width: 100%;
          table-layout: fixed;
        }

        table caption {
          font-size: 1.5em;
          margin: .5em 0 .75em;
        }

        table tr {
          border-bottom: 1px solid #ddd;
          padding: .35em;
        }

        table th,
        table td {
          padding: .625em;
        }

        table th {
          border: 0;
          font-size: .85em;
          letter-spacing: .1em;
        }
        table td {
            border: 0;
            font-size: .8em;
            text-align: right;
          }

        @media screen and (max-width: 768px) {
        .width-mobile{
            width:100%;
        }
          table {
            border: 1px solid #ddd;
          }

          table caption {
            font-size: 1.3em;
          }

          table thead {
            border: none;
            clip: rect(0 0 0 0);
            height: 1px;
            margin: -1px;
            overflow: hidden;
            padding: 0;
            position: absolute;
            width: 1px;
          }

          table tr {
            border-bottom: 2px solid #ddd;
            display: block;
            margin-bottom: .625em;
            padding: 0;
          }
          table td {
            border-bottom: 1px solid #ddd;
            display: block;
            font-size: .8em;
            text-align: right;
          }
          table td::before {
            /*
            * aria-label has no advantage, it won't be read inside a table
            content: attr(aria-label);
            */
            content: attr(data-label);
            float: left;
            font-weight: 600 !important;
          }

          table td:last-child {
            border-bottom: 0;
          }
        }
        @media screen and (max-width: 1024px) {
          .d-none{
            display: none;
          }
        }
        @media screen and (min-width: 1024px) {
          .is-mobile-visible{
            display: none;
          }
        }
        .button.is-delete {
            background-color: #f14668;
            border-color: #fff;
            color: #fff
        }
        .button.is-delete.is-outlined:hover,.button.is-delete.is-outlined.is-hovered,.button.is-delete.is-outlined:focus,.button.is-delete.is-outlined.is-focused {
            background-color: #fff;
            border-color: #f14668;
            color: #f14668
        }
        .button.is-custom {
            background-color: #414E6A;
            border-color: #fff;
            color: #fff
        }
        .button.is-custom:hover,.button.custom.is-hovered {
            background-color: #ffff;
            border-color: #414E6A;
            color: #414E6A
        }
        .button.is-custom.is-outlined:hover,.button.is-custom.is-outlined.is-hovered,.button.is-custom.is-outlined:focus,.button.is-custom.is-outlined.is-focused {
            background-color: #fff;
            border-color: #fff;
            color: #414E6A
        }
        .button.is-custom2 {
            background-color: #7A97A9;
            border-color: #fff;
        color: #fff
        }
        .button.is-custom2:hover,.button.custom2.is-hovered {
            background-color: #fff;
            border-color: #7A97A9;
            color: #7A97A9
        }
        .button.is-custom2.is-outlined:hover,.button.is-custom2.is-outlined.is-hovered,.button.is-custom2.is-outlined:focus,.button.is-custom2.is-outlined.is-focused {
            background-color: #fff;
            border-color: #fff;
            color: #7A97A9
        }
        .button.is-custom3 {
            background-color: #3e8ed0;
            border-color: #fff;
            color: #fff
        }
        .button.is-custom3:hover,.button.custom2.is-hovered {
            background-color: #fff;
            border-color: #3e8ed0;
            color: #3e8ed0
        }
        .button.is-custom3.is-outlined:hover,.button.is-custom3.is-outlined.is-hovered,.button.is-custom3.is-outlined:focus,.button.is-custom3.is-outlined.is-focused {
            background-color: #fff;
            border-color: #fff;
            color: #3e8ed0
        }
        .dropdown {
            display: inline-flex;
            position: relative;
            vertical-align: top
        }

        .dropdown.is-active .dropdown-menu,.dropdown.is-hoverable:hover .dropdown-menu {
            display: block
        }

        .dropdown.is-right .dropdown-menu {
            left: auto;
            right: 0
        }

        .dropdown.is-up .dropdown-menu {
            bottom: 100%;
            padding-bottom: 4px;
            padding-top: initial;
            top: auto
        }

        .dropdown-menu {
            display: none;
            left: 0;
            min-width: 5rem;
            padding-top: 4px;
            position: absolute;
            top: 100%;
            z-index: 20
        }

        .dropdown-content {
            background-color: #fff;
            border-radius: 4px;
            box-shadow: 0 .5em 1em -0.125em rgba(10,10,10,.1),0 0px 0 1px rgba(10,10,10,.02);
            padding-bottom: .5rem;
            padding-top: .5rem
        }

        .dropdown-item {
            background-color: #ffffff !important;
            color: #4a4a4a;
            font-size: .875rem;
            line-height: 1.5;
            padding: .2rem;
        }

        a.dropdown-item,button.dropdown-item {
            padding-right: 2rem;
            padding-left: 2rem;
            text-align: center;
            white-space: nowrap;
            width: 100%
        }

        a.dropdown-item:hover,button.dropdown-item:hover {
            background-color: #f5f5f5 !important;
            color: #0a0a0a
        }

    .wrap-input100{
        position: relative;
        width: 100%;
        z-index: 1;
    }
    .input100 {
        font-family: Raleway-SemiBold;
        font-size: 18px;
        line-height: 1.2;
        color: #686868;
        display: block;
        width: 100%;
        background: #e6e6e6;
        height: 62px;
        border-radius: 3px;
        padding: 0 30px 0 65px;
    }
    .focus-input100 {
        display: block;
        position: absolute;
        border-radius: 3px;
        bottom: 0;
        left: 0;
        z-index: -1;
        width: 100%;
        height: 100%;
        box-shadow: 0px 0px 0px 0px;
        color: rgba(211, 63, 141, 0.6);
    }
    .symbol-input100 {
        font-size: 24px;
        color: #999999;
        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-box;
        display: -ms-flexbox;
        display: flex;
        align-items: center;
        position: absolute;
        border-radius: 25px;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 100%;
        padding-left: 23px;
        padding-bottom: 5px;
        pointer-events: none;
        -webkit-transition: all 0.4s;
        -o-transition: all 0.4s;
        -moz-transition: all 0.4s;
        transition: all 0.4s;
    }
    </style>
</head>
<body style="height:100%;">
<a role="button" class="navbar-burger" data-target="navMenu" aria-label="menu" aria-expanded="false">
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
</a>
<div class="p-2 navbar-menu is-mobile-visible" id="navMenu" style="">
            <nav class="navbar" role="navigation" aria-label="dropdown navigation">
                <div class="navbar-item has-dropdown is-active">
                <a class="">
                    uitm
                  <img src="">
                </a>

                <div class="navbar-dropdown">
                    <a class="navbar-item p-4 is-size-7">
                        <span class="has-text-white fas fa-home pr-2"></span>
                        <span class="has-text-white is-size-7" >Dashboard</span>
                    </a>
                    <a class="navbar-item p-4 is-size-7">
                        <span class="has-text-white fas fa-user pr-4"></span>
                        <span class="has-text-white is-size-7" >Profile</span>
                    </a>
                    <a class="navbar-item p-4 is-size-7">
                        <span class="has-text-white fas fa-inbox pr-4"></span>
                        <span class="has-text-white is-size-7" >Reports</span>
                    </a>
                    <a class="navbar-item p-4 is-size-7">
                        <span class="has-text-white fas fa-file-pen pr-4"></span>
                        <span class="has-text-white is-size-7" >Form</span>
                    </a>
                    <a class="navbar-item p-4 is-size-7">
                        <span class="has-text-white fas fa-circle-info pr-4"></span>
                        <span class="has-text-white" >Guideline</span>
                    </a>
                    <a class="box has-text-black navbar-item p-4 m-0 is-size-7" style="background-color: #a0e4d1;">
                        <span class="fas fa-book pr-4"></span>
                        <span class="is-size-7" >Scope</span>
                    </a>
                    <a class="navbar-item p-4 is-size-7">
                        <span class="fas fa-circle-plus pr-4"></span>
                        <span class="is-size-7" >Supervision</span>
                    </a>
                    <hr class="navbar-divider">
                    <div class="navbar-item p-4">
                        <a class="is-size-7">
                            <span class="has-text-white fas fa-arrow-right-from-bracket pr-4"></span>
                            <span class="has-text-white" >Sign-out</span>
                        </a>
                    </div>
                </div>
              </div>
            </nav>
        </div>
<div class="columns m-0 p-0 h-100">
    <div class="p-2 column is-2 d-none">
        <aside class="menu">
          <p class="menu-label">
              <img src="">
          </p>
          <ul class="menu-list">
              <li>
                  <a class="navbar-item p-4 is-size-7">
                    <span class="has-text-white fas fa-home pr-2"></span>
                    <span class="has-text-white is-size-7" >Dashboard</span>
                  </a>
              </li>
              <li>
                  <a class="navbar-item p-4 is-size-7">
                    <span class="has-text-white fas fa-user pr-4"></span>
                    <span class="has-text-white is-size-7" >Profile</span>
                  </a>
              </li>
              <li>
                  <a class="navbar-item p-4 is-size-7">
                    <span class="has-text-white fas fa-inbox pr-4"></span>
                    <span class="has-text-white is-size-7" >Reports</span>
                  </a>
              </li>
              <li>
                  <a class="navbar-item p-4 is-size-7">
                        <span class="has-text-white fas fa-file-pen pr-4"></span>
                        <span class="has-text-white is-size-7" >Form</span>
                  </a>
              </li>
              <li>
                  <a class="navbar-item p-4 is-size-7">
                      <span class="has-text-white fas fa-circle-info pr-4"></span>
                      <span class="has-text-white" >Guideline</span>
                  </a>
              </li>
              <li>
                  <a class="box has-text-black navbar-item p-4 m-0 is-size-7" style="background-color: #a0e4d1;">
                      <span class="fas fa-book pr-4"></span>
                      <span class="" >Scope</span>
                  </a>
              </li>
              <li>
                  <a class="navbar-item p-4 is-size-7">
                      <span class="has-text-white fas fa-circle-plus pr-4"></span>
                      <span class="has-text-white" >Supervision</span>
                  </a>
              </li>
              <hr class="navbar-divider">
              <li>
                  <a class="is-size-7">
                      <span class="has-text-white fas fa-arrow-right-from-bracket pr-4"></span>
                      <span class="has-text-white is-size-7" >Sign-out</span>
                  </a>
              </li>
          </ul>
        </aside>
    </div>
    <div class="column h-100 p-5" style="background-color:#FFFFFF;">
        <div class="custom-border p-6 w-100">
            <div class="is-flex is-justify-content-space-between is-align-items-center pb-2">
                <div>
                    <label class="has-text-weight-semibold has-text-grey-dark is-size-5" style=" border-bottom :2px solid #ebebeb;">Lecturer Form</label>
                </div>
            </div>
            <div class="">
                <div class="columns m-0 p-0 is-multiline">
                    <div class="column is-3" style="align-content: center;">
                        <label class="">Name:</label>
                    </div>
                    <div class="column is-9">
                        <input class="px-4 py-2" type="text" placeholder="Full Name" style="width: 100%; border-radius: 6px; border-width: 1px;border-color: #bdbdbd; outline: none;">
                    </div>
                    <div class="column is-3" style="align-content: center;">
                        <label class="">Staff ID</label>
                    </div>
                    <div class="column is-9">
                        <input class="px-4 py-2" type="text" placeholder="Staff ID" style="width: 100%; border-radius: 6px; border-width: 1px;border-color: #bdbdbd; outline: none;">
                    </div>
                    <div class="column is-3" style="align-content: center;">
                        <label class="">Position</label>
                    </div>
                    <div class="column is-9">
                        <input class="px-4 py-2" type="text" placeholder="Position" style="width: 100%; border-radius: 6px; border-width: 1px;border-color: #bdbdbd; outline: none;">
                    </div>
                    <div class="column is-3" style="align-content: center;">
                        <label class="">Email:</label>
                    </div>
                    <div class="column is-9">
                        <input class="px-4 py-2" type="email" placeholder="@uitm.edu.my" style="width: 100%; border-radius: 6px; border-width: 1px;border-color: #bdbdbd; outline: none;">
                    </div>
                </div>
            </div>
            <div class="is-flex is-justify-content-space-between pt-4">
                    <button class="button is-custom2"><span class="has-text-weight-semibold is-size-7">Back</span></button>
                    <button class="button is-custom"><span class="has-text-weight-semibold is-size-7">Save Changes</span></button>
            </div>
        </div>
    </div>
</div>
<script>
    document.addEventListener('DOMContentLoaded', () => {

  // Get all "navbar-burger" elements
  const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Add a click event on each of them
  $navbarBurgers.forEach( el => {
    el.addEventListener('click', () => {

      // Get the target from the "data-target" attribute
      const target = el.dataset.target;
      const $target = document.getElementById(target);

      // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
      el.classList.toggle('is-active');
      $target.classList.toggle('is-active');

    });
  });

});
</script>
</body>
</html>