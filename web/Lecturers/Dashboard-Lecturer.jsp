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
          font-size: .85em;
          letter-spacing: .1em;
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
            border-bottom: 2px solid #abb1bf;
            display: block;
            margin-bottom: .625em;
          }
          table td {
            border-bottom: 1px solid #abb1bf;
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
                    <a class="box has-text-black navbar-item p-4 m-0 is-size-7" style="background-color: #a0e4d1;;">
                        <span class="fas fa-home pr-2"></span>
                        <span class="is-size-7" >Dashboard</span>
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
                        <span class="has-text-white" >Form</span>
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
<div class="columns m-0 p-0">
    <div class="p-2 column is-2 d-none">
        <aside class="menu">
          <p class="menu-label">
              <img src="">
          </p>
          <ul class="menu-list">
              <li>
                  <a class="box has-text-black navbar-item p-4 m-0 is-size-7" style="background-color: #a0e4d1;;">
                    <span class="fas fa-home pr-2"></span>
                    <span class="is-size-7" >Dashboard</span>
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
                        <span class="has-text-white" >Form</span>
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
    <div class="column" style="background-color:#FFFFFF;">
        <div class="py-1 px-5 is-flex is-justify-content-end is-align-items-center">
            <input class="px-4 m-1" type="text" placeholder="Search" style="width: 18rem; border-radius: 6px; border-width: 1px;border-color: #bdbdbd; outline: none;">
            <span class="has-background-black" style="border-radius: 100%; width: 40px; height: 40px;">
                <img src="">
            </span>
        </div>
        <div class="columns is-multiline m-0 p-0">
            <div class="column is-8">
                <div class="custom-border p-3 h-100 w-100">
                    <label class="has-text-weight-semibold has-text-grey">
                        Today's Summary
                    </label>
                    <div class="columns m-0 p-0">
                        <div class="column">
                            <div class="box custom-bg w-100 h-100">
                                <div class="is-size-5 fas fa-user-graduate has-text-grey"></div>
                                <p class="has-text-grey has-text-weight-semibold">20</p>
                                <p class="has-text-grey is-size-7">Total Students</p>
                            </div>
                        </div>
                        <div class="column">
                            <div class="box custom-bg2 w-100 h-100">
                                <div class="is-size-5 fas fa-book-open-reader has-text-grey"></div>
                                <p class="has-text-grey has-text-weight-semibold">20</p>
                                <p class="has-text-grey is-size-7">Ongoing Report</p>
                            </div>
                        </div>
                        <div class="column">
                            <div class="box custom-bg3 w-100 h-100">
                                <div class="is-size-5 fas fa-book-open-reader has-text-grey"></div>
                                <p class="has-text-grey has-text-weight-semibold">20</p>
                                <p class="has-text-grey is-size-7">Past Report</p>
                            </div>
                        </div>
                        <div class="column">
                            <div class="box custom-bg4 w-100 h-100">
                                <div class="is-size-5 fas fa-list-check has-text-grey"></div>
                                <p class="has-text-grey has-text-weight-semibold">20</p>
                                <p class="has-text-grey is-size-7">Ongoing Task</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column is-4">
                <div class="custom-border p-3">
                    <label class="has-text-weight-semibold has-text-grey">
                        Graph
                    </label>
                    <div class="w-100 h-100">
                        <div id="chart"></div>
                    </div>
                </div>
            </div>
            <div class="column is-8">
                <div class="custom-border p-3">
                    <label class="has-text-weight-semibold has-text-grey">
                        Students Report Progress
                    </label>
                    <table>
                        <thead>
                            <tr style="border-bottom: 2px solid #abb1bf;">
                                <th class="has-text-grey-light has-text-weight-semibold has-text-centered is-size-7">#</th>
                                <th class="has-text-grey-light has-text-weight-semibold has-text-centered is-size-7">Student Name</th>
                                <th class="has-text-grey-light has-text-weight-semibold has-text-centered is-size-7">Report's Title</th>
                                <th class="has-text-grey-light has-text-weight-semibold has-text-centered is-size-7">Progress</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="has-text-grey has-text-weight-semibold is-size-7 has-text-centered">01</td>
                                <td class="has-text-grey has-text-weight-semibold is-size-7 has-text-centered has-text-right-mobile" data-label="Student Name">Ali</td>
                                <td class="has-text-grey has-text-weight-semibold is-size-7 has-text-centered has-text-right-mobile" data-label="Report's Title">Topic 1</td>
                                <td class="has-text-grey has-text-weight-semibold is-size-7 has-text-centered has-text-right-mobile" data-label="Progress">40%</td>
                            </tr>
                            <tr>
                                <td class="has-text-grey has-text-weight-semibold is-size-7 has-text-centered">02</td>
                                <td class="has-text-grey has-text-weight-semibold is-size-7 has-text-centered has-text-right-mobile" data-label="Student Name">Ali</td>
                                <td class="has-text-grey has-text-weight-semibold is-size-7 has-text-centered has-text-right-mobile" data-label="Report's Title">Topic 1</td>
                                <td class="has-text-grey has-text-weight-semibold is-size-7 has-text-centered has-text-right-mobile" data-label="Progress">40%</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="column is-4">
                <div class="custom-border p-3 h-100 w-100">
                    <label class="has-text-weight-semibold has-text-grey">
                        Statistics
                    </label>
                </div>
            </div>
            <div class="column is-full">
                <div class="custom-border p-3 h-100 w-100">
                    <label class="has-text-weight-semibold has-text-grey">
                        Alerts and Reminder
                    </label>
                    <section class="section is-small"></section>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
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
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<script>
    const options = {
          series: [{
          name: 'PRODUCT A',
          data: [44, 55, 41, 67, 22, 43]
        }, {
          name: 'PRODUCT B',
          data: [13, 23, 20, 8, 13, 27]
        }],
          chart: {
          type: 'bar',
          height: 150,
          stacked: true,
          toolbar: {
            show: false
          },
          zoom: {
            enabled: true
          }
        },
        responsive: [{
          breakpoint: 480,
          options: {
            legend: {
              position: 'bottom',
              offsetX: -10,
              offsetY: 0
            }
          }
        }],
        plotOptions: {
          bar: {
            horizontal: false,
            borderRadius: 10,
            borderRadiusApplication: 'end', // 'around', 'end'
            borderRadiusWhenStacked: 'last', // 'all', 'last'
            dataLabels: {
              total: {
                enabled: false,
                style: {
                  fontSize: '13px',
                  fontWeight: 900
                }
              }
            }
          },
        },
        xaxis: {
          type: 'datetime',
          categories: ['01/01/2011 GMT', '01/02/2011 GMT', '01/03/2011 GMT', '01/04/2011 GMT',
            '01/05/2011 GMT', '01/06/2011 GMT'
          ],
        },
        yaxis: {
            show: false
        },
        legend: {
          position: 'bottom'
        },
        fill: {
          opacity: 1
        }
        };

        const chart = new ApexCharts(document.querySelector("#chart"), options);
        chart.render();
</script>
</html>