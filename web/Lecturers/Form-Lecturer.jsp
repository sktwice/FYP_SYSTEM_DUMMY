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
          border: 1px solid #ddd;
          font-size: .85em;
          letter-spacing: .1em;
        }
        table td {
            border: 1px solid #ddd;
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
                    <a class="box has-text-black navbar-item p-4 m-0 is-size-7" style="background-color: #a0e4d1;">
                        <span class="fas fa-file-pen pr-4"></span>
                        <span class="is-size-7" >Form</span>
                    </a>
                    <a class="navbar-item p-4 is-size-7">
                        <span class="has-text-white fas fa-circle-info pr-4"></span>
                        <span class="has-text-white" >Guideline</span>
                    </a>
                    <a class="navbar-item p-4 is-size-7">
                        <span class="has-text-white fas fa-book pr-4"></span>
                        <span class="has-text-white" >Scope</span>
                    </a>
                    <a class="navbar-item p-4 is-size-7">
                        <span class="has-text-white fas fa-circle-plus pr-4"></span>
                        <span class="has-text-white" >Supervision</span>
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
                  <a class="box has-text-black navbar-item p-4 m-0 is-size-7" style="background-color: #a0e4d1;">
                        <span class="fas fa-file-pen pr-4"></span>
                        <span class="is-size-7" >Form</span>
                  </a>
              </li>
              <li>
                  <a class="navbar-item p-4 is-size-7">
                      <span class="has-text-white fas fa-circle-info pr-4"></span>
                      <span class="has-text-white" >Guideline</span>
                  </a>
              </li>
              <li>
                  <a class="navbar-item p-4 is-size-7">
                      <span class="has-text-white fas fa-book pr-4"></span>
                      <span class="has-text-white" >Scope</span>
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
                      <span class="has-text-white" >Sign-out</span>
                  </a>
              </li>
          </ul>
        </aside>
    </div>
    <div class="column h-100" style="background-color:#FFFFFF;">
        <div class="custom-border p-4 w-100">
            <div class="is-flex is-justify-content-space-between is-align-items-center pb-2">
                <div>
                    <label class="has-text-weight-semibold has-text-grey-dark is-size-5">Forms</label>
                    <p class="has-text-grey-light is-size-7">More than 7 forms</p>
                </div>
                <button class="button is-custom" style="height:2rem;">
                    <span class="is-size-7">Create</span>
                </button>
                </div>
            <div class="has-background-grey-lighter w-100" style="border-radius: 6px;">
                <div class="has-text-grey is-size-7 has-text-weight-semibold p-3">Refer to the rubric below</div>
            </div>
            <div class="p-3">
                <div class="is-flex is-justify-content-space-between pb-2">
                    <label class="has-text-weight-semibold has-text-grey is-size-5">F2 - PROJECT MOTIVATION EVALUATION RUBRIC</label>
                    <button class="button is-custom3"><span class="is-size-7">Download</span></button>
                </div>
                <table class="">
                    <thead>
                    <tr class="has-background-grey" style="border-bottom: 2px solid #ddd;">
                        <th class="has-text-white is-size-7 has-text-centered">No</th>
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
                        <td class="is-size-7 has-text-right-mobile" data-label="Assessment Criteria">Problem identification</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Excellent (8-10)">&bull; Well-defined problem statement.</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Good (6-7)">&bull; Clear problem statement.</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Satisfactory (5)">&bull; Adequate problem statement.</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Poor (1-4)">&bull; Unclear problem statement.</td>
                    </tr>
                    <tr>
                        <td class="has-text-centered is-size-7 has-text-right-mobile" data-label="No">2</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Assessment Criteria">Evidences</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Excellent (8-10)">
                            <ul>
                                <li>&bull; Provides well-supported evidences for project.</li>
                                <li>&bull; Very-clear statement of why project is needed.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Good (6-7)">
                            <ul>
                                <li>&bull; Provides appropriate evidences for project.</li>
                                <li>&bull; Clear statement of why project is needed</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Satisfactory (5)">
                            <ul>
                                <li>&bull; Provides some evidences for project.</li>
                                <li>&bull; Adequate statement of why project is needed.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Poor (1-4)">
                            <ul>
                                <li>&bull; Poor or no evidence for project.</li>
                                <li>&bull; Not-clear statement of why project is needed.</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td class="has-text-centered is-size-7 has-text-right-mobile" data-label="No">3</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Assessment Criteria">Solutions</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Excellent (8-10)">&bull; Well documented, reasoned and appropriate solutions.</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Good (6-7)">&bull; Appropriate solutions.</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Satisfactory (5)">&bull; Reasonable solutions.</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Poor (1-4)">&bull; Inappropriate or no solutions.</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="p-3">
                <div class="is-flex is-justify-content-space-between pb-2">
                    <label class="has-text-weight-semibold has-text-grey is-size-5">F3 - LITERATURE REVIEW EVALUATION RUBRIC</label>
                    <button class="button is-custom3"><span class="is-size-7">Download</span></button>
                </div>
                <table class="">
                    <thead>
                    <tr class="has-background-grey" style="border-bottom: 2px solid #ddd;">
                        <th class="has-text-white is-size-7 has-text-centered">No</th>
                        <th class="has-text-white is-size-7 has-text-centered">Assessment Criteria</th>
                        <th class="has-text-white is-size-7 has-text-centered">Excellent (8-10)</th>
                        <th class="has-text-white is-size-7 has-text-centered">Good (6-7)</th>
                        <th class="has-text-white is-size-7 has-text-centered">Satisfactory (5)</th>
                        <th class="has-text-white is-size-7 has-text-centered">Poor (1-4)</th>
                        <th class="has-text-white is-size-7 has-text-centered">0</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="has-text-centered is-size-7 has-text-right-mobile" data-label="No">1</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Assessment Criteria">Relevance and context</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Excellent (8-10)">
                            <ul>
                                <li>&bull; Shows exceptional understanding of project’s relevance.</li>
                                <li>&bull; Skillfully aligns the literature with project’s context.</li>
                                <li>&bull; Sets in-depth context for the problem.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Good (6-7)">
                             <ul>
                                <li>&bull; Shows capable understanding of project’s relevance.</li>
                                <li>&bull; Makes some associations of the literature with project’s context.</li>
                                <li>&bull; Places the problem in context beyond basic leave.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Satisfactory (5)">
                            <ul>
                                <li>&bull; Shows limited understanding of project’s relevance.</li>
                                <li>&bull; Displays some perspective of project’s context.</li>
                                <li>&bull; Sets a basic context for the problem.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Poor (1-4)">
                            <ul>
                                <li>&bull; Does not explain project’s relevance.</li>
                                <li>&bull; Does not place the project into context of the literature.</li>
                                <li>&bull; Does not set the context for the problem .</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="0">No Evidence</td>
                    </tr>
                    <tr>
                        <td class="has-text-centered is-size-7 has-text-right-mobile" data-label="No">2</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Assessment Criteria">Knowledge of the field/sources</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Excellent (8-10)">
                            <ul>
                                <li>&bull; Demonstrates exceptional depth of knowledge of the field.</li>
                                <li>&bull; Comprehensive use of most recent and relevant sources.</li>
                                <li>&bull; Clearly discriminates among seminal sources.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Good (6-7)">
                             <ul>
                                <li>&bull; Demonstrates proficient knowledge of the field.</li>
                                <li>&bull; Thorough selection of sources pertinent to project.</li>
                                <li>&bull; Shows some discrimination among relevant sources.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Satisfactory (5)">
                            <ul>
                                <li>&bull; Demonstrates a basic knowledge of the field.</li>
                                <li>&bull; Selected sources relevant to project.</li>
                                <li>&bull; Limited discrimination among relevant sources.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Poor (1-4)">
                            <ul>
                                <li>&bull; Lacks a basic knowledge of the field.</li>
                                <li>&bull; Selected sources irrelevant to project.</li>
                                <li>&bull; Does not discriminate among relevant sources.</li>
                                <li>&bull; Misinterprets sources.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="0">No Evidence</td>
                    </tr>
                    <tr>
                        <td class="has-text-centered is-size-7 has-text-right-mobile" data-label="No">3</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Assessment Criteria">Writing</td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Excellent (8-10)">
                            <ul>
                                <li>&bull; Exemplary writing quality.</li>
                                <li>&bull; Components are connected in a seamless way.</li>
                                <li>&bull; No grammatical, punctuation, and/or errors.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Good (6-7)">
                             <ul>
                                <li>&bull; Is well written and coherently organized.</li>
                                <li>&bull; Few grammatical, punctuation, and/or spelling errors.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Satisfactory (5)">
                            <ul>
                                <li>&bull; Adequate writing quality.</li>
                                <li>&bull; Organized but tends to discuss papers in succession.</li>
                                <li>&bull; Several grammatical, punctuation, and/or spelling errors.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="Poor (1-4)">
                            <ul>
                                <li>&bull; Writing is confusing.</li>
                                <li>&bull; Structure is disorganized.</li>
                                <li>&bull; Many grammatical, punctuation, and/or spelling errors.</li>
                            </ul>
                        </td>
                        <td class="is-size-7 has-text-right-mobile" data-label="0">No Evidence</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="p-3">
                <div class="is-flex is-justify-content-space-between pb-2">
                    <label class="has-text-weight-semibold has-text-grey is-size-5">F7 - PROJECT FORMULATION PRESENTATION EVALUATION</label>
                    <button class="button is-custom3"><span class="is-size-7">Open</span></button>
                </div>
            </div>
            <div class="p-3">
                <div class="is-flex is-justify-content-space-between pb-2">
                    <label class="has-text-weight-semibold has-text-grey is-size-5">F8 - PROJECT FORMULATION REPORT EVALUATION</label>
                    <button class="button is-custom3"><span class="is-size-7">Open</span></button>
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