%% Visualizing CoronaVirus Spread and Deaths
% Dr Barbara A.K. Kreilkamp
close all;
clear all;

load('2019-nCoV.mat'); % [used] data taken from PDFs on https://www.who.int/emergencies/diseases/novel-coronavirus-2019/situation-reports/
% note that Taiwan has reported cases but is not a member of WHO [data not included here yet], see
% petition here: https://petitions.whitehouse.gov/petition/take-actions-supporting-taiwan-joining-who
% includes 'nan' where data provided by WHO is inconsistent with the number
% of reported new cases
% [not used] Site without references https://www.reddit.com/r/Coronavirus/comments/eupar9/new_coronavirus_exponential_growth_graph_no_source/
% and check WHO's myth-busters too:
% https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters

allchina = [china.jan , china.feb];
allother = [other.jan , other.feb];
allotherasian = [otherasian.jan , otherasian.feb];


figure
subplot(1,3,1)
plot(allchina(1,:)','*'); hold on
plot(allchina(2,:)','r+')
title('China')
legend('confirmed cases','deaths','Location','northwest')
ylabel('Incidence')
xlabel(sprintf('days 20/01 - %s',datestr(now-1,'dd/mm'))) %WHO provides data only in late pm (EU time-zone)

subplot(1,3,2)
plot(allother(1,:),'*'); hold on
plot(allother(2,:),'r+')
title('Other')
legend('confirmed cases','deaths','Location','northwest')
ylabel('Incidence')
xlabel(sprintf('days 20/01 - %s',datestr(now-1,'dd/mm')))

subplot(1,3,3)
plot(allotherasian(1,:),'*'); hold on
plot(allotherasian(2,:),'r+')
title('Other Asian')
legend('confirmed cases','deaths','Location','northwest')
ylabel('Incidence')
xlabel(sprintf('days 20/01 - %s',datestr(now-1,'dd/mm')))