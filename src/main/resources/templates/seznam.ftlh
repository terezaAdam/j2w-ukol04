[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="seznam">
    [#list seznam as Vizitka]
    <a href="/detail/${Vizitka?index}">
        <div class="vizitka">
            <div class="jmeno">${Vizitka.jmeno}</div>
            <div class="firma">${Vizitka.firma}</div>
            <div class="udaje">
                <div class="adresa">
                    <div>${Vizitka.ulice}</div>
                    <div><span>${Vizitka.obecPsc}</span></div>
                </div>
                <div class="kontakty">
                    [#if Vizitka.email?has_content]
                    <div><i class="bi bi-at"></i>${Vizitka.email}</div>
                    [/#if]
                    [#if Vizitka.telefon?has_content]
                    <div><i class="bi bi-phone"></i>${Vizitka.telefon}</div>
                    [/#if]
                    [#if Vizitka.web?has_content]
                    <div><i class="bi bi-globe"></i>${Vizitka.web}</div>
                    [/#if]
                </div>
            </div>
        </div>
    </a>
    [/#list]

    <a href="/nova">
        <div class="vizitka vizitka--nova">
            <svg width="100" height="100">
                <rect width="20" height="100" x="40" y="0" fill="white" />
                <rect width="100" height="20" x="0" y="40" fill="white" />
            </svg>
        </div>
    </a>
</div>
</body>
</html>
