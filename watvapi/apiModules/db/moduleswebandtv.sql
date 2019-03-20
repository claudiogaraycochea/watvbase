-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 20, 2019 at 08:46 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moduleswebandtv`
--

-- --------------------------------------------------------

--
-- Table structure for table `run`
--

CREATE TABLE `run` (
  `run_id` int(11) NOT NULL,
  `website_id` int(11) NOT NULL,
  `run_src` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `run`
--

INSERT INTO `run` (`run_id`, `website_id`, `run_src`) VALUES
(8, 1, '{"title":"100 DÃ­as para Enamorarse","subtitle":"Lunes a Viernes de 22:45hs","button_label":"Siguenos en Facebook","button_url":"https://send.com"}'),
(9, 2, '{"title":"Like Fravega 1","subtitle":"Compra todo lo que quieras, seguinos en ...","button_label":"Visita nuestra Web","button_url":"https://fravega.com"}'),
(10, 4, '{"title":"Lista de links","subtitle":"Link 1","button_label":"Base","button_url":"http://base.com"}'),
(11, 5, '{"title":"Compra ahora en Fravega","subtitle":"Led smart de 45\\"","button_label":"Comprar","button_url":"https://comprar.com","background_color":"#e87d53","font_color":"#fcf8f7","button_background_color":"#035efb","button_font_color":"#70ebe2"}'),
(12, 6, '{"title":"Pedi ahora!","subtitle":"Descarga la app de pedidos ya y pedi tu comida al instante.","button_label":"Download App Android","button_url":"https://play.google.com/store/apps/","logo_image":"https://modules.weband.tv/uploads/website/6/website_logo_6_25Aug2018145112.png","product_image":"https://modules.weband.tv/uploads/website/6/website_product_6_25Aug2018145627.jpg","background_image":"https://modules.weband.tv/uploads/website/6/website_bg_6_24Aug2018113212.png","background_color":"#eb563a","font_color":"#ffffff","button_background_color":"#000000","button_font_color":"#ffffff"}'),
(13, 10, '{"title":"Test App","subtitle":"Download the App","button_url_google_play":"https://play.google.com/store/apps/details?id=com.gm.despegar","button_url_app_store":"https://itunes.apple.com/ar/app/despegar-com/id511479725?mt=8","logo_image":"https://modules.weband.tv/uploads/website/10/website_logo_10_25Aug2018181833.png","product_image":"https://modules.weband.tv/uploads/website/10/website_product_10_25Aug2018182048.jpg","background_image":"https://modules.weband.tv/uploads/website/10/website_bg_10_25Aug2018183355.jpg","background_color":"#fefefe","font_color":"#000000","button_background_color":"#000000","button_font_color":"#ffffff"}'),
(14, 11, '{"title":"Seguinos en nuestras redes sociales","subtitle":"Podemos Hablar - Sabados de 21hs a 23hs dfwr werew rewrwr","button_url_facebook":"http://facebook.com","button_url_instagram":"http://instagram.com","button_url_twitter":"http://twitter.com","logo_image":"","product_image":"https://modules.weband.tv/uploads/website/11/website_product_11_27Aug2018123814.jpg","background_image":"","background_color":"#0099ff","font_color":"#ffffff","button_background_color":"#000000","button_font_color":"#ffffff"}'),
(15, 12, '{"title":"Compra tu Smart TV 43\\"","subtitle":"Haz click en \\"comprar\\" para ver mas informacion, compralo y recibe el tv en la puerta de tu casa","button_label":"Comprar ahora","button_url":"http://fravega.com","logo_image":"https://modules.weband.tv/uploads/website/12/website_logo_12_27Aug2018140520.png","product_image":"https://modules.weband.tv/uploads/website/12/website_product_12_27Aug2018141047.png","background_image":"","background_color":"#ffffff","font_color":"#000000","button_background_color":"#3300cc","button_font_color":"#ffffff"}'),
(16, 13, '{"title":"Vote the Best MVP","subtitle":"What you thing that is the best MVP?","logo_image":"https://modules.weband.tv/uploads/website/13/website_logo_13_27Aug2018215640.png","product_image":"","background_image":"","background_color":"#e6e6e6","font_color":"#000000","button_background_color":"#000000","button_font_color":"#ffffff","vote_item":"[{\\"id\\":0,\\"name\\":\\"Shaquille O\'neal\\"},{\\"id\\":1,\\"name\\":\\"Michael Jordan\\"},{\\"id\\":2,\\"name\\":\\"Koby Briant\\"}]"}'),
(17, 14, '{"title":"Juega y Vota","subtitle":"Que super heroe tiene capa roja","logo_image":"","product_image":"","background_image":"","background_color":"#ffffff","font_color":"#000000","button_background_color":"#000000","button_font_color":"#ffffff","vote_item":"[{\\"id\\":0,\\"name\\":\\"Superman\\"},{\\"id\\":1,\\"name\\":\\"Batman\\"},{\\"id\\":2,\\"name\\":\\"Hulk\\"}]"}'),
(18, 15, '{"title":"www","subtitle":"w","logo_image":"","product_image":"","background_image":"","background_color":"#ffffff","font_color":"#000000","button_background_color":"#000000","button_font_color":"#ffffff","vote_item":"[{\\"id\\":3,\\"name\\":\\"Shaq\\"},{\\"id\\":2,\\"name\\":\\"Shawn Kemp\\"}]"}'),
(19, 16, '{"title":"Que opinas de la suba del dolar?","subtitle":"Vota ahora","logo_image":"","product_image":"","background_image":"","background_color":"#00e17a","font_color":"#ffffff","button_background_color":"#43475f","button_font_color":"#ffffff","vote_item":"[{\\"id\\":0,\\"name\\":\\"No me interesa\\"},{\\"id\\":1,\\"name\\":\\"Me preocupa\\"},{\\"id\\":2,\\"name\\":\\"Es algo que no puedes soportar\\"}]"}'),
(20, 17, '{"title":"Pedidos ya","subtitle":"Descarga la App","button_url_google_play":"https://play.google.com/store/apps/details?id=com.pedidosya","button_url_app_store":"https://itunes.apple.com/ar/app/pedidosya-delivery-de-comida/id490099807","logo_image":"https://modules.weband.tv/uploads/website/17/website_logo_17_18Oct2018142241.png","product_image":"https://modules.weband.tv/uploads/website/17/website_product_17_18Oct2018142256.jpg","background_image":"","background_color":"#ff113e","font_family":"Fjalla One","font_color":"#ffffff","button_background_color":"#000000","button_font_color":"#ffffff"}'),
(21, 18, '{"title":"Test","subtitle":"app","button_url_google_play":"https://play.google.com/store/apps/details?id=com.pedidosya'),
(22, 19, '{"title":"Test","subtitle":"Link","button_label":"Download","button_url":"https://play.google.com/store/apps/details?id=com.pedidosya'),
(23, 21, '{"title":"Primer Link","subtitle":"Encuentra los productos del dia de la madre","button_label":"Comprar","button_url":"https://listado.mercadolibre.com.ar/_Tienda_fravega_Deal_regalos-dia-de-la-madre_af_to","logo_image":"https://modules.weband.tv/uploads/website/21/website_logo_21_20Oct2018015639.png","product_image":"https://modules.weband.tv/uploads/website/21/website_product_21_20Oct2018020603.png","background_image":"","background_color":"#333647","font_color":"#ffffff","button_background_color":"#0080ff","button_font_color":"#ffffff"}'),
(24, 24, '{"title":" ","subtitle":" ","button_url_facebook":"https://www.facebook.com/telefenoticias","button_url_instagram":"https://www.instagram.com/telefenoticias","button_url_twitter":"https://twitter.com/telefenoticias","logo_image":"https://modules.weband.tv/uploads/website/24/website_logo_24_29Nov2018135823.png","product_image":"","background_image":"","background_color":"#00e17a","font_family":"Ubuntu","font_color":"#ffffff"}'),
(25, 25, '{"title":"Probando","subtitle":"Vote now!","logo_image":"","product_image":"","background_image":"","background_color":"#70d386","font_family":"Bitter","font_color":"#ffffff","button_background_color":"#60ca86","button_font_color":"#ffffff","vote_item":"[{\\"id\\":0,\\"name\\":\\"Option 1\\"},{\\"id\\":1,\\"name\\":\\"Option 2\\"},{\\"id\\":2,\\"name\\":\\"Option 3\\"}]"}'),
(26, 26, '{"title":"Visit our website","subtitle":"The latest news at our website","button_label":"More Info","button_url":"https://listado.mercadolibre.com.ar/_Tienda_fravega_Deal_regalos-dia-de-la-madre_af_to","logo_image":"","product_image":"","background_image":"","background_color":"#4ccc99","font_family":"Bitter","font_color":"#ffffff","button_background_color":"#7de989","button_font_color":"#ffffff"}'),
(27, 27, '{"components":[{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Testing","description":"Description"}},{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleDownloadApp","moduleTitle":"Download App","moduleSrc":{"buttonLinkGooglePlay":"ggggggg","buttonLinkAppStore":"iiiiiii"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(28, 37, '{"components":[{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title","description":"Description"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(29, 54, '{}'),
(30, 55, '{"components":[{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title","description":"Description"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(31, 61, '{}'),
(32, 59, '{"components":[{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title","description":"Description"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(33, 62, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title","description":"Description"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#0099cc","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(34, 66, '{"components":[{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title","description":"Description"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(35, 71, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title","description":"Description"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#0099cc","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(36, 72, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title","description":"Description"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#0099cc","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(37, 73, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title","description":"Description"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#0099cc","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(38, 74, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title","description":"Description"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#0099cc","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(39, 75, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title","description":"Description"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#0099cc","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(40, 76, '{"components":[{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title","description":"Description"}},{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(41, 77, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleDownloadApp","moduleTitle":"Download App","moduleSrc":{"buttonLink":"http://","buttonTitle":"Google Play"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(42, 78, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleDownloadApp","moduleTitle":"Download App","moduleSrc":{"buttonLink":"http://","buttonTitle":"Google Play"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(43, 79, '{"components":[{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Download APP","description":"Description"}},{"moduleKey":"ModuleDownloadApp","moduleTitle":"Download App","moduleSrc":{"buttonLink":"http://","buttonTitle":"Google Play"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(44, 80, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title1","description":"Description"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#0099cc","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(45, 81, '{"components":[{"moduleKey":"ModuleDownloadApp","moduleTitle":"Download App","moduleSrc":{"buttonLink":"http://","buttonTitle":"Google Play"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Download APP","description":"Description"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(46, 82, '{"components":[{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Download APP","description":"Description"}},{"moduleKey":"ModuleDownloadApp","moduleTitle":"Download App","moduleSrc":{"buttonLink":"http://","buttonTitle":"Google Play"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(47, 83, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title0","description":"Description"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#0099cc","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(48, 84, '{"components":[{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Download APP","description":"Description"}},{"moduleKey":"ModuleDownloadApp","moduleTitle":"Download App","moduleSrc":{"buttonLink":"http://","buttonTitle":"Google Play"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(49, 85, '{"components":[{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Download APP","description":"Description"}},{"moduleKey":"ModuleDownloadApp","moduleTitle":"Download App","moduleSrc":{"buttonLink":"http://","buttonTitle":"Google Play"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(50, 86, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title0","description":"Description"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#0099cc","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(51, 87, '{"components":[{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Download APP","description":"Description"}},{"moduleKey":"ModuleDownloadApp","moduleTitle":"Download App","moduleSrc":{"buttonLink":"http://","buttonTitle":"Google Play"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(52, 88, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title0","description":"Description"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#0099cc","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(53, 89, '{"components":[{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Download APP","description":"Description"}},{"moduleKey":"ModuleDownloadApp","moduleTitle":"Download App","moduleSrc":{"buttonLink":"http://","buttonTitle":"Google Play"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(54, 90, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title0","description":"Description"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(55, 91, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title0","description":"Description"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#0099cc","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(56, 92, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title0","description":"Description"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#0099cc","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(57, 93, '{"components":[{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Download APP","description":"Description"}},{"moduleKey":"ModuleFacebookSendMessage","moduleTitle":"Facebook Send Message","moduleSrc":{"buttonTitle":"Send","text":"#hashtag "}},{"moduleKey":"ModuleSocialNetwork","moduleTitle":"Social Network","moduleSrc":{"urlFacebook":"https://facebook.com/","urlInstagram":"https://instagram.com/","urlTwitter":"https://twitter.com/"}}],"template":{"title":"MyTemplate 3","styles":{"background":{"backgroundColor":"#FF9300","fontSize":10,"fontFamily":"Open Sans","color":"blue"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#FF9300","fontColor":"#fff333"}}}}'),
(58, 94, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleFacebookSendMessage","moduleTitle":"Facebook Send Message","moduleSrc":{"buttonTitle":"Send","text":"#hashtag "}},{"moduleKey":"ModuleSocialNetwork","moduleTitle":"Social Network","moduleSrc":{"urlFacebook":"https://facebook.com/","urlInstagram":"https://instagram.com/","urlTwitter":"https://twitter.com/"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Download APP","description":"Description"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(59, 95, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title0","description":"Description"}},{"moduleKey":"ModuleBuyNow","moduleTitle":"Buy Now","moduleSrc":{"title":"Testing","buttonLink":"http://","buttonTitle":"Buy Now"}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#0099cc","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(60, 96, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title","description":"Description"}},{"moduleKey":"ModuleLink","moduleTitle":"Simple Link","moduleSrc":{"buttonLink":"http://","buttonTitle":"More info"}},{"moduleKey":"ModuleLink","moduleTitle":"Simple Link","moduleSrc":{"buttonLink":"tel:303030303030","buttonTitle":"Call Us"}},{"moduleKey":"ModuleSocialNetwork","moduleTitle":"Social Network","moduleSrc":{"urlFacebook":"https://facebook.com/","urlInstagram":"https://instagram.com/","urlTwitter":"https://twitter.com/"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#1a2852","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(61, 97, '{"components":[{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Download APP","description":"Description"}},{"moduleKey":"ModuleDownloadApp","moduleTitle":"Download App","moduleSrc":{"buttonLink":"http://","buttonTitle":"Google Play"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(62, 98, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleTitleDescription","moduleTitle":"Title Description","moduleSrc":{"title":"Title","description":"Description"}},{"moduleKey":"ModuleLink","moduleTitle":"Simple Link","moduleSrc":{"buttonLink":"http://","buttonTitle":"More info"}},{"moduleKey":"ModuleLink","moduleTitle":"Simple Link","moduleSrc":{"buttonLink":"tel:303030303030","buttonTitle":"Call Us"}},{"moduleKey":"ModuleSocialNetwork","moduleTitle":"Social Network","moduleSrc":{"urlFacebook":"https://facebook.com/","urlInstagram":"https://instagram.com/","urlTwitter":"https://twitter.com/"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#1a2852","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(63, 99, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleFacebookSendMessage","moduleTitle":"Facebook Send Message","moduleSrc":{"buttonTitle":"Send","text":"#hashtag "}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(64, 100, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleFacebookSendMessage","moduleTitle":"Facebook Send Message","moduleSrc":{"buttonTitle":"Send","text":"#hashtag "}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#294279","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(65, 101, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleFacebookSendMessage","moduleTitle":"Facebook Send Message","moduleSrc":{"buttonTitle":"Send","text":"#hashtag "}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#294279","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}'),
(66, 102, '{"components":[{"moduleKey":"ModuleImage","moduleTitle":"Image","moduleSrc":{"imageURL":"","imageSize":"small"}},{"moduleKey":"ModuleFacebookSendMessage","moduleTitle":"Facebook Send Message","moduleSrc":{"buttonTitle":"Send","text":"#hashtag "}},{"moduleKey":"ModuleRealtimeReactions","moduleTitle":"Realtime Reactions","moduleSrc":{"title":"Realtime Reactions","reactions":"happy, sad, like, love"}}],"template":{"title":"MyTemplate 1","styles":{"background":{"backgroundColor":"#ff0000","fontSize":20,"fontFamily":"Bitter"},"title":{"fontSize":50},"subtitle":{"fontSize":20},"button":{"backgroundColor":"#ff0022","fontColor":"#ffffff"}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `user_password` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `user_token` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `user_status` int(1) NOT NULL,
  `user_firstname` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `user_lastname` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_password`, `user_token`, `user_status`, `user_firstname`, `user_lastname`) VALUES
(2, 'claudio@sharesmarttv.com', '321456', '870269227a3b432814fb091f9801b1b2052e4470', 1, 'Tom', 'Gary'),
(25, 'computadoraweb@gmail.com', '321456', 'fc2f91eae7b4b4a67899472b2c7f87a627943080', 1, 'Andre', 'Cou');

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `website_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `website_name` varchar(50) NOT NULL,
  `website_template` varchar(20) NOT NULL,
  `website_date` date NOT NULL,
  `website_updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`website_id`, `user_id`, `website_name`, `website_template`, `website_date`, `website_updated`) VALUES
(17, 2, 'Download PedidosYa', 'downloadapp', '2018-09-20', '2018-09-20'),
(24, 2, 'Follow Test 1', 'follow', '2018-10-20', '2018-10-20'),
(25, 2, 'Vote Test 1', 'vote', '2018-10-20', '2018-10-20'),
(26, 2, 'Link Test 2', 'link', '2018-10-20', '2018-10-20'),
(27, 2, 'Buy Now Test 1', 'buynow', '2018-10-31', '2018-10-31'),
(37, 2, 'Testing 1', 'buynow', '2019-03-14', '2019-03-14'),
(38, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(39, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(40, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(41, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(42, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(43, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(44, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(45, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(46, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(47, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(48, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(49, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(50, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(51, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(52, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(53, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(54, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(55, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(56, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(57, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(58, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(59, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(60, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(61, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(62, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(63, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(64, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(65, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(66, 2, 'Testing 1', '', '2019-03-14', '2019-03-14'),
(67, 2, 'Testing 1', '', '2019-03-15', '2019-03-15'),
(68, 2, 'Testing 1', '', '2019-03-15', '2019-03-15'),
(69, 2, 'Testing 1', '', '2019-03-15', '2019-03-15'),
(70, 2, 'Testing 1', '', '2019-03-15', '2019-03-15'),
(71, 2, 'Testing 1', '', '2019-03-15', '2019-03-15'),
(72, 2, 'Testing 1', '', '2019-03-15', '2019-03-15'),
(73, 2, 'Testing 1', 'undefined', '2019-03-15', '2019-03-15'),
(74, 2, 'Testing 1', 'undefined', '2019-03-15', '2019-03-15'),
(75, 2, 'Testing 1', 'buy_now', '2019-03-15', '2019-03-15'),
(76, 2, 'Testing 1', 'buy_now', '2019-03-15', '2019-03-15'),
(77, 2, 'Testing 1', 'vote', '2019-03-15', '2019-03-15'),
(78, 2, 'Testing 1', 'download_app', '2019-03-15', '2019-03-15'),
(79, 2, 'Testing 1', 'download_app', '2019-03-15', '2019-03-15'),
(80, 2, 'Testing 1', 'download_app', '2019-03-15', '2019-03-15'),
(81, 2, 'Testing 1', 'download_app', '2019-03-15', '2019-03-15'),
(82, 2, 'Testing 1', 'buy_now', '2019-03-15', '2019-03-15'),
(83, 2, 'Testing 1', 'buy_now', '2019-03-15', '2019-03-15'),
(84, 2, 'Testing 1', 'download_app', '2019-03-15', '2019-03-15'),
(85, 2, 'Download Pedidos Ya', 'download_app', '2019-03-15', '2019-03-15'),
(86, 2, 'nn', 'buy_now', '2019-03-15', '2019-03-15'),
(87, 2, 'Download Despegar APP', 'download_app', '2019-03-15', '2019-03-15'),
(88, 2, 'buy fravega', 'buy_now', '2019-03-15', '2019-03-15'),
(89, 2, 'Download Pedidos Ya', 'download_app', '2019-03-15', '2019-03-15'),
(90, 2, 'Download Pedidos Ya2', 'buy_now', '2019-03-16', '2019-03-16'),
(91, 2, 'Download Pedidos', 'buy_now', '2019-03-16', '2019-03-16'),
(92, 2, 'Download Pedidos', 'buy_now', '2019-03-16', '2019-03-16'),
(93, 2, 'Download Despegar APP', 'download_app', '2019-03-16', '2019-03-16'),
(94, 2, 'Download Pedidos', 'download_app', '2019-03-16', '2019-03-16'),
(95, 2, 'Download Pedidos', 'buy_now', '2019-03-16', '2019-03-16'),
(96, 2, 'Download Pedidos', 'buy_now', '2019-03-16', '2019-03-16'),
(97, 2, 'Download Pedidos', 'download_app', '2019-03-16', '2019-03-16'),
(98, 2, 'Link test', 'link', '2019-03-16', '2019-03-16'),
(99, 2, 'Download Pedidos', 'vote', '2019-03-16', '2019-03-16'),
(100, 2, 'Download Pedidos', 'message', '2019-03-16', '2019-03-16'),
(101, 2, 'Download Pedidos', 'message', '2019-03-16', '2019-03-16'),
(102, 2, 'Download Pedidos', 'vote', '2019-03-17', '2019-03-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `run`
--
ALTER TABLE `run`
  ADD PRIMARY KEY (`run_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`website_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `run`
--
ALTER TABLE `run`
  MODIFY `run_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `website`
--
ALTER TABLE `website`
  MODIFY `website_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
