%%
cd /Volumes/Lab_shared_folder/Datasets/Pinatubo/Total_Effect_Estimation/Data/raw/MPI-ESM-LR/G3/input-aod/

ncdisp('aod_t63l47_ham__2020_2069.nc')

for year = 2019:

aodData  = ncread('aod_t63l47_ham_2069.nc','AOD');
%surf(double(aodData(:,:,:,1)))
aodDataColumn = squeeze(nansum(aodData,3));
aodDataYear = nanmean(nanmean(aodDataColumn,2));

figure
imagesc(aodDataColumn)
colorbar


aodData  = ncread('aod_t63l47_ham__2020_2069.nc','AOD');

load /Volumes/Lab_shared_folder/Datasets/Pinatubo/Aerosol/GISS_struct.mat

x = nanmean(nanmean(nanmean(giss_struct.field(:,:,giss_struct.year == 1992,:))))

figure
plotMonthsFrom4D(giss_struct, 1992, 1:12, 1)



