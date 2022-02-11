printf "Listing snapshots..."
snapper list

printf "Remove snaps by typing \n\nsnapper delete 1-lastnumber of list"
printf "\n\n\n\n\n\n\n\nType 'y' when snapper delete is done manually in another tab or window\n\n\n\n\n\n\n\n"

read choice

if [ $choice = 'y' ]
        printf "Good Job\n\n"
end

echo "Updating Keyring..."
sudo pacman -S archlinux-keyring && sudo pacman -Syu

echo "Removing Zen kernel..."
sudo pacman -R linux-zen linux-zen-headers

echo "Installing linux kernel..."
sudo pacman -S linux linux-headers

echo "Removing snapper..."
sudo pacman -R snapper snap-pac snapper-suport

echo "Removing some unwanted stuffs..."
sudo pacman -R firedragon firedragon-extension-plasma-integration mpv jamesdsp

echo "Installing some stuffs..."
sudo pacman -S firefox telegram-desktop vlc

echo "Configuring git..."
git config --global user.name "Ghost-Reborn"
git config --global user.email "abhinandammanamkandy@gmail.com"
git config --global credential.helper store

