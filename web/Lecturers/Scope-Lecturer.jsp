<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.0/css/bulma.min.css">
    <script src="https://kit.fontawesome.com/d21aa4c3aa.js" crossorigin="anonymous"></script>
    <style>
        /* Assign full width inputs*/
        input[type=text],
        input[type=password] {
            width: 100%;
            padding: 12px 40px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

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
            border: 2;
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
            font-weight: 500 !important;
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
    </style>
</head>
<body>
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
    <div class="column h-100" style="background-color:#FFFFFF;">
        <div class="custom-border p-4 w-100">
            <div class="is-flex is-justify-content-space-between is-align-items-center pb-2">
                <div>
                    <label class="has-text-weight-semibold has-text-grey-dark is-size-5">FYP Scope</label>
                    <p class="has-text-success is-size-7">Available topics</p>
                </div>
                <div class="columns m-0 p-0" style="width:55%;">
                    <div class="column is-half p-1">
                        <input class="input p-4 has-text-black" style="--bulma-input-placeholder-color:hsl(221deg 1.15% 10.93% / 50%); background-color: #d6d9e0;" type="text" placeholder="Search"/>
                    </div>
                    <div class="column p-1" style="align-content:center;">
                        <div class="dropdown is-hoverable w-100">
                          <div class="dropdown-trigger w-100">
                            <button class="button w-100" aria-haspopup="true" aria-controls="dropdown-menu3">
                              <span>Sort</span>
                              <span class="icon is-small">
                                <i class="fas fa-angle-down" aria-hidden="true"></i>
                              </span>
                            </button>
                          </div>
                          <div class="dropdown-menu" id="dropdown-menu3" role="menu">
                            <div class="dropdown-content">
                              <a href="#" class="dropdown-item"> Newest </a>
                              <a href="#" class="dropdown-item"> All </a>
                              <a href="#" class="dropdown-item"> Solved </a>
                            </div>
                          </div>
                        </div>
                    </div>
                    <div class="column p-1" style="align-content:center;">
                        <button class="button is-custom px-4 w-100" style="">
                            <span class="">Add Scope</span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="p-3">
                <table class="">
                    <thead>
                    <tr class="" style="border-bottom: 2px solid #ddd;">
                        <th class="has-text-grey-lighter is-size-7 has-text-centered">Topic</th>
                        <th class="has-text-grey-lighter is-size-7 has-text-centered">Programme</th>
                        <th class="has-text-grey-lighter is-size-7 has-text-centered">Session Date</th>
                        <th class="has-text-grey-lighter is-size-7 has-text-centered">Total Students</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="has-text-centered is-size-7 has-text-right-mobile" data-label="Topic">Android App Development</td>
                        <td class="is-size-7 has-text-centered has-text-right-mobile" data-label="Programme">CS230</td>
                        <td class="is-size-7 has-text-centered has-text-right-mobile" data-label="Session Date">Session Date</td>
                        <td class="is-size-7 has-text-centered has-text-right-mobile" data-label="Total Students">23</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="p-3 is-flex is-justify-content-space-between">
                <label class="has-text-grey-lighter is-size-7">Showing data 1 to 8 of 256k entries</label>
                <div>
                    <nav class="pagination is-right" role="navigation" aria-label="pagination">
                      <ul class="pagination-list">
                        <li><a href="#" class="pagination-link has-background-grey-lighter" style="border: 0;" aria-label="Goto page before"><</a></li>
                        <li><a class="pagination-link is-current" aria-label="Goto page 1">1</a></li>
                        <li><a href="#" class="pagination-link has-background-grey-lighter" style="border: 0;" aria-label="Page 2" aria-current="page">2</a></li>
                        <li><a href="#" class="pagination-link has-background-grey-lighter" style="border: 0;" aria-label="Goto page 3">3</a></li>
                        <li><span class="pagination-ellipsis">&hellip;</span></li>
                        <li><a href="#" class="pagination-link has-background-grey-lighter" style="border: 0;" aria-label="Goto page next">86</a></li>
                      </ul>
                    </nav>
                </div>
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