//
//  OneTreatmentController.swift
//  App2
//
//  Created by Israel Soto Salcido on 10/29/18.
//  Copyright © 2018 Israel Soto Salcido. All rights reserved.
//

import UIKit

class OneTreatmentcontroller: UIViewController {
    
    @IBOutlet weak var contentLabel: UILabel!
    var contentText: String? = ""
    @IBOutlet weak var contentImage: UIImageView!
    var imageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("OneTreatment loaded")
        print("Data receied: " + contentText!)
        contentLabel.lineBreakMode = .byTruncatingMiddle
        contentLabel.numberOfLines = 40
        
        if (contentText == "celulitis"){
            contentLabel?.text = "Carboxiterapia: Tratamiento semi invasivo a base de infiltración de CO2 para la eliminación de grasa localizada, tratamiento de estrías, celulitis y mejora la calidad de piel.\n\n Mesoterapia: La mesoterapia es una técnica estética que se basa en la aplicación de micro-inyecciones con sustancias que combaten la celulitis, la grasa localizada, las arrugas y la flacidez mejorando la calidad y el aspecto de la piel. \n\nCavitación: Tratamiento no invasivo que consiste en aplicar ondas de ultra sonido de baja densidad en algunas zonas, ejerce un efecto físico sobre la zona corporal el cual esta determinado por la cantidad de líquido que contenga el cuerpo, su finalidad es reducir celulitis y grasa localizada. \n\nR adio Frecuencia: Tratamiento no invasivo e indoloro que actúa selectivamente en partes de tu cuerpo, logrando reducción volumétrica y reafirmación, tensa y mejora la textura de la piel, compacta el tejido sub-cutáneo, reduciendo su volumen favoreciendo el drenaje linfático disminuyendo la celulitis. \n\nHIFU: Aplicación de ultrasonido de alta frecuencia, tiene la capacidad de destruir de forma permanente los adipositos por lo que es sumamente efectivo en lipo-distrofias importantes de abdomen, brazos y glúteos, piernas y cintura, por otro lado previene la aparición de flacidez post reducción de contorno corporal."
            imageName = "celulitis.jpg"

        } else if (contentText == "reafirmacion_muslos") {
            contentLabel?.text = "Electroestimulación: Tratamiento estético no invasivo mas usado a la hora de tonificar y dar firmeza a los tejidos en pocas sesiones y sin esfuerzos ni efectos secundarios, favorecer el sistema circulatorio al permitir un mejor retorno venoso y linfático como consecuencia ayuda a eliminar la retención de líquidos, aumentar la circulación y eliminar toxinas. \n\n HIFU: Aplicación de ultrasonido de alta frecuencia, tiene la capacidad de destruir de forma permanente los adipositos por lo que es sumamente efectivo en lipo-distrofias importantes de abdomen, brazos y glúteos, piernas y cintura, por otro lado previene la aparición de flacidez post reducción de contorno corporal."
            imageName = "reafirmacion.jpg"
        } else if (contentText == "reafirmacion_brazos") {
            contentLabel?.text = "Carboxiterapia: Tratamiento semiinvasivo a base de infiltración de CO2 para la eliminación de grasa localizada, tratamiento de estrías, celulitis y mejora la calidad de piel. \n\n Electroestimulación: Tratamiento estético no invasivo mas usado a la hora de tonificar y dar firmeza a los tejidos en pocas sesiones y sin esfuerzos ni efectos secundarios, favorece el sistema circulatorio al permitir un mejor retorno venoso y linfático como consecuencia ayuda a eliminar la retención de líquidos, aumentar la circulación y eliminar toxínas. \n\n HIFU Ultrasonido de alta frecuencia y alta energía, tiene la capacidad de destruir de forma permanente los adipositos por lo que es sumamente efectivo en distrofias importantes de abdomen, brazos y glúteos,  piernas y cintura, por otro lado previene la aparición de flacidez post reducción de contorno corporal. \n\nMesoterapia: La mesoterapia es una técnica estética que se basa en la aplicación de microinyecciones con sustancias que combaten la grasa localizada, las arrugas y la flacidez que mejora la calidad y el aspecto de la piel."
            imageName = "brazos.jpg"
        } else if (contentText == "embellecimiento_gluteos"){
            contentLabel?.text = "Electroestimulación: Tratamiento estético no invasivo mas usado a la hora de tonificar y dar firmeza a los tejidos en pocas sesiones y sin esfuerzos ni efectos secundarios, favorece el sistema circulatorio al permitir un mejor retorno venoso y linfático, como consecuencia ayuda a eliminar la retención de líquidos, aumentar la circulación y eliminar toxinas. \n\n Gluteos: Tratamiento invasivo que potencializa la accion tensoactiva contra la flacidez de gluteos. \n\n Luz Pulsada: Emite una banda ancha de luz que permite tratar varios objetivos a la vez, manchas pigmentadas, venitas o textura cutánea rugosa y así mejorar gobalmente la calidad de la piel al estimular la formación de colágeno. la energía de la luz actúa en las capas mas profundas para mejorar gradualmente la tonalidad y textura de la piel, eliminar las manchas y rojeces, poros dilatados, arrugas finas y dar luminosidad."
            imageName = "levantamiento.jpg"
        } else if (contentText == "levantamiento_busto") {
            contentLabel?.text = "Mesoterapia: La mesoterapia es una técnica estética que se basa en la aplicación de microinyecciones con sustancias que combaten la grasa localizada, las arrugas y la flacidez que mejora la calidad y el aspecto de la piel. \n\n RadioFrecuencia: Tratamiento no invasivo e indolor que actúa selectivamente en partes de tu cuerpo, logrando su reducción volumétrica y reafirmación, tensa y mejora la textura de la piel compacta el tejido sub cutáneo, reduciendo su volumen favorece el drenaje linfático. \n\n Luz Pulsada: Emite una banda ancha de luz que permite tratar varios objetivos a la vez, manchas pigmentadas, venitas o textura cutánea rugosa y así mejorar globalmente la calidad de la piel al estimular la formación de colágeno. La energía de la luz actúa en las capas más profundas para mejorar gradualmente la tonalidad y textura de la piel, eliminar las manchas y enrojecimiento de la piel, poros dilatados, arrugas finas y dar luminosidad."
            imageName = "embellecimiento.jpg"
        } else if (contentText == "levantamiento_facial"){
            contentLabel?.text = "RadioFrecuencia: Tratamiento no invasivo e indolor que actúa selectivamente en partes de tu cuerpo, logrando su reducción volumétrica y reafirmación, tensa y mejora la textura de la piel compacta el tejido sub-cutáneo, reduciendo su volumen favorece el drenaje linfático disminuyendo la celulitis."
            imageName = "facial.jpg"
        } else if (contentText == "mejorar_calidad_piel") {
            contentLabel?.text = "Mesoterapia: La mesoterapia es una técnica estética que se basa en la aplicación de micro inyecciones con sustancias que combaten la grasa localizada, las arrugas y la flacidez que mejora la calidad y el aspecto de la piel. \n\n Carboxiterapia: Tratamiento semi-invasivo a base de infiltración de CO2 para la eliminación de grasa localizada, tratamiento de estrías, celulitis y mejora la calidad de piel. \n\n RadioFrecuencia: Tratamiento no invasivo e indoloro que actúa selectivamente en partes de tu cuerpo, logrando su reducción volumétrica y reafirmación, tensa y mejora la textura de la piel compacta el tejido sub cutáneo, reduciendo su volumen favorece el drenaje linfático. \n\n Luz Pulsada: Emite una banda ancha de luz que permite tratar varios objetivos a la vez, manchas pigmentadas, venitas o textura cutánea rugosa y así mejorar globalmente la calidad de la piel al estimular la formación de colágeno. La energía de la luz actúa en las capas más profundas para mejorar gradualmente la tonalidad y textura de la piel, eliminar las manchas y enrojecimiento de la piel, poros dilatados, arrugas finas y dar luminosidad. \n\n HIFU Aplicacion de un haz de ultrasonido de alta frecuencia y alta energía, tiene la capacidad de destruir de forma permanente los adipocitos por lo que es sumamente efectivo en lipo-distrofias importantes de abdomen, brazos y glúteos, piernas y cintura, por otro lado previene la aparición de flacidez post reducción de contorno corporal. \n\n Lápiz inductor de colágeno: Es un pequeño aparato en forma de lápiz que sirve para tratar la piel, la punta del dermapen posee diminutas agujas que realizan punciones cutáneas produciendo una activación de la epidermis , del sistema circulatorio y de la regeneración del colágeno."
            imageName = "calidad de piel.jpg"
        }else if (contentText == "tratamiento_remover_flacidez") {
            contentLabel?.text = "Mesoterapia: La mesoterapia es una técnica estética que se basa en la aplicación de microinyecciones con sustancias que combaten la grasa localizada, las arrugas y la flacidez que mejora la calidad y el aspecto de la piel \n\n\n\n Electroestimulación: Técnica en la que por medio de electrodos colocados estratégicamente se transmiten impulsos eléctricos que provocan contracciones musculares, dando un efecto similar al que se obtendría con la actividad física. \n\n\n\n Carboxiterapia: Tratamiento semi-invasivo a base de infiltración de CO2 para la eliminación de grasa localizada, tratamiento de estrías, celulitis y mejora la calidad de piel. \n\n\n\n Radio Frecuencia: Tratamiento no invasivo e indoloro que actúa selectivamente en partes de tu cuerpo, logrando su reducción volumétrica y reafirmación, tensa y mejora la textura de la piel, compacta el tejido subcutáneo, reduciendo su volumen y favoreciendo el drenaje linfático."
            imageName = "facial.jpg"
        }else if (contentText == "rejuvenecimiento_facial") {
            contentLabel?.text = "Luz Pulsada Intensa: La energía de la luz mejora la calidad de la piel al estimular la formación de colágeno actuando en las capas mas profundas para mejorar gradualmente la piel, eliminar las manchas, poros dilatados, arrugas finas y dar luminosidad \n\n Láser YAG: Tratamiento por medio de láser que impacta selectivamente en los vasos sanguíneos profundos de la piel, elevando la temperatura para que estimule la formación de colágeno nuevo. \n\n Lápiz inductor de colágeno: Es un dispositivo de 15 micro agujas con el cuál se aplican principios activos para así favorecer los factores de crecimiento, colágeno y elastina, consiguiendo rejuvenecer, oxigenar e hidratar la piel. \n\n Radiofrecuencia Facial Tratamiento que a través de la transferencia de energía en forma de calor a los estratos más profundos de la dermis, logra la estimulación de la producción de colágeno, eliminando los signos del envejecimiento de la piel. \n\n Botox: La técnica consiste en la infiltración de toxina butolínica mediante una aguja extra fina en el músculo de la zona que se desea tratar, produciendo su relajación e inhibiendo el movimiento del mismo. \n\n Peeling: Aplicación de sustancias químicas sobre la piel para así conseguir una disminución de las arrugas, una piel rejuvenecida y bien hidratada."
            imageName = "rejuvecimiento facial.jpg"
        }else if (contentText == "atenuacion_estrias") {
            contentLabel?.text = "Carboxiterapia: Tratamiento semi invasivo a base de infiltración de CO2 para la eliminación de grasa localizada, tratamiento de estrías, celulitis y mejora la calidad de piel. \n\n Mesoterapia: La mesoterapia es una técnica estética que se basa en la aplicación de micro inyecciones con sustancias que combaten la grasa localizada, las arrugas y la flacidez que mejora la calidad y el aspecto de la piel \n\n Plasma rico en plaquetas: Tratamiento que se lleva a cabo extrayendo una muestra de sangre del paciente, el fluido es posteriormente centrifugado para separar sus partes y obtener el plasma con factores de crecimiento. Una vez que se obtiene el plasma, el especialista en medicina estética procederá a inyectarlo en las estrías que la persona desea tratar."
            imageName = "atenuacion de estrias.jpg"
        }else if (contentText == "rejuvenecimiento_manos") {
            contentLabel?.text = "Microdermoabrasión: Tratamiento que elimina la célula muerta y  estimula la producción de colágeno para mejorar la oxigenación de la piel y rejuvenecer las manos, este tratamiento se combina con luz pulsada intensa, la energía de la luz mejora la calidad de la piel al estimular la formación de colágeno actuando en las capas más profundas para mejorar gradualmente la piel, eliminar las manchas, poros dilatados, arrugas finas y dar luminosidad."
            imageName = "rejuvecimiento de manos.jpg"
        }else if (contentText == "remocion_ojeras") {
            contentLabel?.text = "Carboxiterapia: Tratamiento semiinvasivo a base de infiltración de CO2 para la eliminación de grasa localizada, tratamiento de estrías, celulitis y mejora la calidad de piel. \n\n Dermapen: Es un pequeño aparato con forma de lápiz que sirve para tratar la piel, la punta del dermapen posee diminutas agujas que realizan punciones cutáneas produciendo una activación de la epidermis , del sistema circulatorio y de la regeneración del colágeno."
            imageName = "remocion.jpg"
        }else if (contentText == "blanqueamiento_axilas") {
            contentLabel?.text = "Luz Pulsada Intensa: La energía de la luz mejora la calidad de la piel al estimular la formación de colágeno acunado en las capas más profundas para mejorar gradualmente la piel, eliminar las manchas, poros dilatados, arrugas finas y dar luminosidad. \n\n Peeling: Aplicación de sustancias químicas sobre la piel para así conseguir una disminución de las arrugas, una piel rejuvenecida y bien hidratada."
            imageName = "blanqueamiento de axilas.jpg"
        }else if (contentText == "remocion_manchas") {
            contentLabel?.text = "Luz Pulsada Intensa: La energía de la luz mejora la calidad de la piel al estimular la formación de colágeno actuando en las capas más profundas para mejorar gradualmente la piel, eliminar las manchas, poros dilatados, arrugas finas y dar luminosidad. \n\n Peeling: Aplicación de sustancias químicas sobre la piel para así conseguir una disminución de las arrugas, una piel rejuvenecida y bien hidratada. \n\n Laser YAG: Tratamiento por medio de láser que impacta selectivamente en los vasos sanguíneos profundos de la piel, aumentando la temperatura para que estimule la formación de colágeno nuevo. \n\n Lápiz inductor de colágeno: Es un pequeño aparato con forma de lápiz que sirve para tratar la piel, posee diminutas agujas que realizan punciones cutáneas produciendo una activación de la epidermis , del sistema circulatorio y de la regeneración del colágeno."
            imageName = "remocion de manchas.jpg"
        }else if (contentText == "remocion_hongos") {
            contentLabel?.text = "Pedicure clínico con láser YAG: Además de limpiar tus pies, un pedicure clínico ayuda a detectar patologías como micosis, uñas encarnadas, pie de atleta, deformaciones, fascitis plantar y callosidades, debido a trastornos de la bioquímica del pie."
            imageName = "remocion de hongos.jpg"
        }else if (contentText == "atenuacion_tatuajes") {
            contentLabel?.text = "Láser YAG:  El pigmento puede ser eliminado por fragmentación de las partículas y alteración química del pigmento que lo hace incoloro, haciéndolo menos visible al ojo natural, la fragmentación de la tinta en pequeñas partículas también puede facilitar su eliminación por medio de la fagocitosis de los macrófagos por el sistema linfático, y finalmente el tatuaje puede ser eliminado hasta cierto punto por la eliminación transepidérmica."
            imageName = "atenuacon de tatuakes.jpg"
        }else if (contentText == "tratamiento_hiperhidrosis") {
            contentLabel?.text = "Botox: La técnica consiste en la infiltración de toxina botulínica mediante una aguja extra fina de la toxina botulínica en el musculo de la zona que se desea tratar, produciendo su relajación e inhibiendo el movimiento del mismo."
            imageName = "hiperhidrosis.jpg"
        }else if (contentText == "aparatologia_estetica") {
            contentLabel?.text = "Aparatología estética: Conjunto de instrumentos que de manera individual o en combinación, con tratamientos medico estéticos, brindan un amplia gama de posibilidades con el objetivo de corregir imperfecciones faciales y corporales."
            imageName = "aparatologia estetica.jpg"
        } else if (contentText == "tratamiento_flacidez") {
            contentLabel?.text = "Mesoterapia: La mesoterapia es una técnica estética que se basa en la aplicación de microinyecciones con sustancias que combaten la grasa localizada, las arrugas y la flacidez que mejora la calidad y el aspecto de la piel \n\n Electroestimulación: Técnica en la que por medio de electrodos colocados estratégicamente se transmiten impulsos eléctricos que provocan contracciones musculares, dando un efecto similar al que se obtendría con la actividad física. \n\n Carboxiterapia: Tratamiento semi-invasivo a base de infiltración de CO2 para la eliminación de grasa localizada, tratamiento de estrías, celulitis y mejora la calidad de piel. \n\n Radio Frecuencia: Tratamiento no invasivo e indoloro que actúa selectivamente en partes de tu cuerpo, logrando su reducción volumétrica y reafirmación, tensa y mejora la textura de la piel, compacta el tejido subcutáneo, reduciendo su volumen y favoreciendo el drenaje linfático."
            imageName = "tratamiento flacides.jpg"
        } else if (contentText == "mejorar_piel") {
            contentLabel?.text = "Mesoterapia: La mesoterapia es una técnica estética que se basa en la aplicación de micro inyecciones con sustancias que combaten la grasa localizada, las arrugas y la flacidez que mejora la calidad y el aspecto de la piel. \n\n Carboxiterapia: Tratamiento semi-invasivo a base de infiltración de CO2 para la eliminación de grasa localizada, tratamiento de estrías, celulitis y mejora la calidad de piel. \n\n RadioFrecuencia: Tratamiento no invasivo e indoloro que actúa selectivamente en partes de tu cuerpo, logrando su reducción volumétrica y reafirmación, tensa y mejora la textura de la piel compacta el tejido sub cutáneo, reduciendo su volumen favorece el drenaje linfático. \n\n Luz Pulsada: Emite una banda ancha de luz que permite tratar varios objetivos a la vez, manchas pigmentadas, venitas o textura cutánea rugosa y así mejorar globalmente la calidad de la piel al estimular la formación de colágeno. La energía de la luz actúa en las capas más profundas para mejorar gradualmente la tonalidad y textura de la piel, eliminar las manchas y enrojecimiento de la piel, poros dilatados, arrugas finas y dar luminosidad. \n\n HIFU Aplicacion de un haz de ultrasonido de alta frecuencia y alta energía, tiene la capacidad de destruir de forma permanente los adipocitos por lo que es sumamente efectivo en lipo-distrofias importantes de abdomen, brazos y glúteos, piernas y cintura, por otro lado previene la aparición de flacidez post reducción de contorno corporal. \n\n Lápiz inductor de colágeno: Es un pequeño aparato en forma de lápiz que sirve para tratar la piel, la punta del dermapen posee diminutas agujas que realizan punciones cutáneas produciendo una activación de la epidermis , del sistema circulatorio y de la regeneración del colágeno."
            imageName = "calidad de piel.jpg"
        } else {
            contentLabel?.text = "Tratamiento no encontrado"
            imageName = "Clients.jpg"

        }
        let image = UIImage(named: imageName)
        contentImage?.image = image
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("warning!")
    }
    
}
