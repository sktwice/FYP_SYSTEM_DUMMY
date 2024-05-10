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
    <div class="column h-100 p-5" style="background-color:#FFFFFF;">
        <div class="custom-border p-6 w-100">
            <div class="is-flex is-justify-content-space-between is-align-items-center pb-2">
                <div>
                    <label class="has-text-weight-semibold has-text-grey-dark is-size-5">F7 – PROJECT FORMULATION PRESENTATION FORM</label>
                    <p class="has-text-success is-size-7">Give an appropriate response</p>
                </div>
            </div>
            <div class="">
                <div class="columns m-0 p-0 is-multiline ">
                    <div class="column is-3 has-text-weight-semibold is-size-7" style="align-content: center;">
                        Student Name:
                    </div>
                    <div class="column is-9">
                        <input class="input p-4 has-text-black is-size-7" style="--bulma-input-placeholder-color:hsl(221deg 1.15% 10.93% / 20%); background-color: #ffffff;" type="text" placeholder="Student Name"/>
                    </div>
                    <div class="column is-3 has-text-weight-semibold is-size-7" style="align-content: center;">
                        Student ID:
                    </div>
                    <div class="column is-9">
                        <input class="input p-4 has-text-black is-size-7" style="--bulma-input-placeholder-color:hsl(221deg 1.15% 10.93% / 20%); background-color: #ffffff;" type="text" placeholder="Student ID"/>
                    </div>
                    <div class="column is-3 has-text-weight-semibold is-size-7" style="align-content: center;">
                        Programme:
                    </div>
                    <div class="column is-9">
                        <input class="input p-4 has-text-black is-size-7" style="--bulma-input-placeholder-color:hsl(221deg 1.15% 10.93% / 20%); background-color: #ffffff;" type="text" placeholder="Programme"/>
                    </div>
                    <div class="column is-3 has-text-weight-semibold is-size-7" style="align-content: center;">
                        Supervisor:
                    </div>
                    <div class="column is-9">
                        <input class="input p-4 has-text-black is-size-7" style="--bulma-input-placeholder-color:hsl(221deg 1.15% 10.93% / 20%); background-color: #ffffff;" type="text" placeholder="Supervisor"/>
                    </div>
                    <div class="column is-3 has-text-weight-semibold is-size-7" style="align-content: center;">
                        Project Title:
                    </div>
                    <div class="column is-9">
                        <input class="input p-4 has-text-black is-size-7" style="--bulma-input-placeholder-color:hsl(221deg 1.15% 10.93% / 20%); background-color: #ffffff;" type="text" placeholder="Project Title"/>
                    </div>
                    <div class="column is-3 has-text-weight-semibold is-size-7" style="align-content: center;">
                        Presentation Date:
                    </div>
                    <div class="column is-9">
                        <input class="input p-4 has-text-black is-size-7" style=" background-color: #ffffff; border: 1px solid #ccc;" type="date"/>
                    </div>
                </div>
            </div>
            <div class="p-3">
                <table class="">
                    <thead>
                    <tr>
                        <th class="has-text-black has-text-centered" style="border: 1px solid #dbdbdb;">Assessment Criteria</th>
                        <th class="has-text-black has-text-centered" style="border: 1px solid #dbdbdb;">Weight (W)</th>
                        <th class="has-text-black has-text-centered" style="border: 1px solid #dbdbdb;">Score (s) [1-10] (refer to F7 rubric)</th>
                        <th class="has-text-black has-text-centered" style="border: 1px solid #dbdbdb;">Marks (W*S)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="" data-label="Assessment Criteria" style="border: 1px solid #dbdbdb;">
                            <p class="has-text-weight-semibold is-size-7">1. Depth of knowledge</p>
                            <p class="is-size-7">(Possess a clear understanding and able to explain the subject matter.)</p>
                        </td>
                        <td class="has-text-centered" data-label="Weight (W)" style="border: 1px solid #dbdbdb; align-content:center;">3</td>
                        <td class="has-text-centered" data-label="Score (s) [1-10]" style="border: 1px solid #dbdbdb; align-content:center;">
                            <div class="dropdown is-hoverable">
                                <div class="dropdown-trigger">
                                    <button class="button is-white" style="border: 0.9px solid;" aria-haspopup="true" aria-controls="dropdown-menu3">
                                      <span class=" is-size-7">Score</span>
                                      <span class="icon is-small">
                                        <i class="fas fa-angle-down" aria-hidden="true"></i>
                                      </span>
                                    </button>
                                </div>
                                <div class="dropdown-menu is-size-7" id="dropdown-menu1" role="menu">
                                    <div class="dropdown-content">
                                        <a href="#" class="dropdown-item is-size-7"> 1 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 2 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 3 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 4 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 5 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 6 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 7 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 8 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 9 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 10 </a>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="has-text-centered" data-label="Marks (W*S)" style="border: 1px solid #dbdbdb; align-content:center;"></td>
                    </tr>
                    <tr>
                        <td class="" data-label="Assessment Criteria" style="border: 1px solid #dbdbdb;">
                            <p class="has-text-weight-semibold is-size-7">2. Overall Organization of the Project Presentation </p>
                            <p class="is-size-7">(Exhibit/Present the project in a clear, engaging and appropriate form.)</p>
                        </td>
                        <td class="has-text-centered" data-label="Weight (W)" style="border: 1px solid #dbdbdb; align-content:center;">3</td>
                        <td class="has-text-centered" data-label="Score (s) [1-10]" style="border: 1px solid #dbdbdb; align-content:center;">
                            <div class="dropdown is-hoverable">
                                <div class="dropdown-trigger">
                                    <button class="button is-white" style="border: 0.9px solid;" aria-haspopup="true" aria-controls="dropdown-menu3">
                                      <span class=" is-size-7">Score</span>
                                      <span class="icon is-small">
                                        <i class="fas fa-angle-down" aria-hidden="true"></i>
                                      </span>
                                    </button>
                                </div>
                                <div class="dropdown-menu is-size-7" id="dropdown-menu2" role="menu">
                                    <div class="dropdown-content">
                                        <a href="#" class="dropdown-item is-size-7"> 1 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 2 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 3 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 4 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 5 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 6 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 7 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 8 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 9 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 10 </a>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="has-text-centered" data-label="Marks (W*S)" style="border: 1px solid #dbdbdb; align-content:center;"></td>
                    </tr>
                    <tr>
                        <td class="" data-label="Assessment Criteria" style="border: 1px solid #dbdbdb;">
                            <p class="has-text-weight-semibold is-size-7">3. Use Quality of Presentation Materials</p>
                            <p class="is-size-7">(Use several materials or media in presenting the project.)</p>
                        </td>
                        <td class="has-text-centered" data-label="Weight (W)" style="border: 1px solid #dbdbdb; align-content:center;">2</td>
                        <td class="has-text-centered" data-label="Score (s) [1-10]" style="border: 1px solid #dbdbdb; align-content:center;">
                            <div class="dropdown is-hoverable">
                                <div class="dropdown-trigger">
                                    <button class="button is-white" style="border: 0.9px solid;" aria-haspopup="true" aria-controls="dropdown-menu3">
                                      <span class=" is-size-7">Score</span>
                                      <span class="icon is-small">
                                        <i class="fas fa-angle-down" aria-hidden="true"></i>
                                      </span>
                                    </button>
                                </div>
                                <div class="dropdown-menu is-size-7" id="dropdown-menu3" role="menu">
                                    <div class="dropdown-content">
                                        <a href="#" class="dropdown-item is-size-7"> 1 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 2 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 3 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 4 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 5 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 6 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 7 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 8 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 9 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 10 </a>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="has-text-centered" data-label="Marks (W*S)" style="border: 1px solid #dbdbdb; align-content:center;"></td>
                    </tr>
                    <tr>
                        <td class="" data-label="Assessment Criteria" style="border: 1px solid #dbdbdb;">
                            <p class="has-text-weight-semibold is-size-7">4. Delivery Skills</p>
                            <p class="is-size-7">(Proper language used, speak clearly, loudly and at appropriate pace, effective eye contact and presentable attitude.)</p>
                        </td>
                        <td class="has-text-centered" data-label="Weight (W)" style="border: 1px solid #dbdbdb; align-content:center;">3</td>
                        <td class="has-text-centered" data-label="Score (s) [1-10]" style="border: 1px solid #dbdbdb; align-content:center;">
                            <div class="dropdown is-hoverable">
                                <div class="dropdown-trigger">
                                    <button class="button is-white" style="border: 0.9px solid;" aria-haspopup="true" aria-controls="dropdown-menu3">
                                      <span class=" is-size-7">Score</span>
                                      <span class="icon is-small">
                                        <i class="fas fa-angle-down" aria-hidden="true"></i>
                                      </span>
                                    </button>
                                </div>
                                <div class="dropdown-menu is-size-7" id="dropdown-menu4" role="menu">
                                    <div class="dropdown-content">
                                        <a href="#" class="dropdown-item is-size-7"> 1 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 2 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 3 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 4 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 5 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 6 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 7 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 8 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 9 </a>
                                        <a href="#" class="dropdown-item is-size-7"> 10 </a>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="has-text-centered" data-label="Marks (W*S)" style="border: 1px solid #dbdbdb; align-content:center;"></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="p-3">
                <div class="pb-3 has-text-weight-semibold">CSP600 - PROJECT FORMULATION PRESENTATION EVALUATION (F7) RUBRIC</div>
                <table class="">
                    <thead>
                    <tr class="has-background-grey" style="border-bottom: 2px solid #ddd;">
                        <th class="has-text-white is-size-7 has-text-centered" style="width:7%;">No</th>
                        <th class="has-text-white is-size-7 has-text-centered">Assessment Criteria</th>
                        <th class="has-text-white is-size-7 has-text-centered">Excellent (8-10)</th>
                        <th class="has-text-white is-size-7 has-text-centered">Good (6-7)</th>
                        <th class="has-text-white is-size-7 has-text-centered">Satisfactory (5)</th>
                        <th class="has-text-white is-size-7 has-text-centered">Poor (1-4)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="has-text-centered is-size-7 has-text-right-mobile" data-label="No">1</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Assessment Criteria">Depth of Knowledge</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Excellent (8-10)">
                            <ul>
                                <li>&bull; The presenter is clear and easily understood.</li>
                                <li>&bull; Shows depth of thought.</li>
                                <li>&bull; Able to answer questions in an intelligent manner.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Good (6-7)">
                             <ul>
                                <li>&bull; The presenter shows depth of thought in some areas.</li>
                                <li>&bull; Mostly clear with little confusion in the presentation.</li>
                                <li>&bull; Able to answer questions.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Satisfactory (5)">
                            <ul>
                                <li>&bull; The presenter shows some understanding of the subject matter but little depth.</li>
                                <li>&bull; Somewhat clear with some confusion in the presentation.</li>
                                <li>&bull; Able to answer some questions.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Poor (1-4)">
                            <ul>
                                <li>&bull; The presenter shows a surface knowledge only.</li>
                                <li>&bull; Lack clarity and is confusing.</li>
                                <li>&bull; Unable to respond to questions.</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td class="has-text-centered is-size-7 has-text-right-mobile" data-label="No">2</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Assessment Criteria">Overall Organization of The Project Presentation</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Excellent (8-10)">
                            <ul>
                                <li>&bull; The presenter delivers an excellent presentation with a smooth flow and provides good explanations and/or elaboration.</li>
                                <li>&bull; Time is used wisely.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Good (6-7)">
                             <ul>
                                <li>&bull; The presenter delivers a good presentation and provides explanation and/or elaboration.</li>
                                <li>&bull; Time is used wisely.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Satisfactory (5)">
                            <ul>
                                <li>&bull; The presenter delivers a fair presentation and provides explanation and/or insufficient elaboration.</li>
                                <li>&bull; Time is fairly used..</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Poor (1-4)">
                            <ul>
                                <li>&bull; The presenter delivers a poor presentation there is no presentation flow.</li>
                                <li>&bull; Time limit is exceeded and/or the topics are not well covered.</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td class="has-text-centered is-size-7 has-text-right-mobile" data-label="No">3</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Assessment Criteria">Use Variety of Presentation Materials</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Excellent (8-10)">
                            <ul>
                                <li>&bull; There is a variety of materials/media used.</li>
                                <li>&bull; Presentation materials/media are of good quality and useful.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Good (6-7)">
                             <ul>
                                <li>&bull; There is a variety of materials/media used.</li>
                                <li>&bull; Most of the presentation materials/media are of good quality.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Satisfactory (5)">
                            <ul>
                                <li>&bull; There is a fair variety of materials/media used.</li>
                                <li>&bull; Materials/media are adequate with some questionable sources.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Poor (1-4)">
                            <ul>
                                <li>&bull; There is little variety of materials/media used.</li>
                                <li>&bull; Materials/media are inadequate with many questionable sources.</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td class="has-text-centered is-size-7 has-text-right-mobile" data-label="No">4</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Assessment Criteria">Delivery Skills</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Excellent (8-10)">
                            <ul>
                                <li>&bull; The presenter speaks clearly and is audible to the audience.</li>
                                <li>&bull; Grammatical errors are insignificant and pronunciation is very good.</li>
                                <li>&bull; Excellent eye contact.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Good (6-7)">
                             <ul>
                                <li>&bull; The presenter speaks clearly and is audible to most of the audience.</li>
                                <li>&bull; Relatively few grammatical errors and pronunciation is good.</li>
                                <li>&bull; Good eye contact.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Satisfactory (5)">
                            <ul>
                                <li>&bull; The presenter speaks relatively clear, but may not be audible to the back audience.</li>
                                <li>&bull; Some grammatical errors and some mispronunciation.</li>
                                <li>&bull; Some eye contact.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Poor (1-4)">
                            <ul>
                                <li>&bull; The presenter does not speak clearly and may not be audible to most of the audience.</li>
                                <li>&bull; Persistent grammatical errors and serious mispronunciation.</li>
                                <li>&bull; Very poor eye contact.</li>
                            </ul>
                        </td>
                    </tr>
                    </tbody>
                </table>
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