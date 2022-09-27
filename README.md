# Wep App Tools - 0.1v

### html_photo_downloader
* The script should get a Website link and get all images on it, thereafter, save all on the disc 
* By default, the images should be saved in a directory with the Website name
    * www.youtube.com: /youtube/image.jpg
    * The script should verify if the directory has already been created, if not, create it and save the images
* The images must have the original name + current_date that the image was obtained
* The script should list all the images found and give to the user the following interface:
    * 1 - Imageblablabla.jpg / 1.5 Mb
    * 2 - AnotherImage.png / 1 Mb
    * After list all the images, it should has two options: Save all or Edit - In Edit, an image can be selected to make some change like alter the name, delete etc.
* Após todas alterações, deve salvar as imagens no respectivo diretório
* After all changes, the images should be saved on the respective directory on the disc

Feature: 

* Split the images in sub folders by img.type 
    * /youtube/png/img.png
    * /youtube/jpg/img.jpg
* Create a .log file for each time the script is executed 
    * A file should be saved in /WebApp/log/script_name + datetime.rb      
    * The file should has a header with the datetime and script task (useDB mode etc.)
    * The URL
    * All the images (original name and new name) and, if some of them are changed, write the change made in it  
    * If there was any error, it should be written on it
* Save an usage log in the DB
    * id - Integer
    * scrape_date - datetime
    * url - varchar(255)