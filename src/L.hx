
/**
 * Leaflet.js externs
 * @author fbarbut<francois.barbut@gmail.com>
 */
extern class L
{
	
	public static function map(elementId:String):Map;
	public static function icon(options:{iconUrl:String,
		?iconRetinaUrl:String,
		?iconSize:Array<Int>,
		?iconAnchor:Array<Int>,
		?popupAnchor:Array<Int>,
		?shadowUrl:String,
		?shadowRetinaUrl:String,
		?shadowSize: Array<Int>,
		?shadowAnchor:Array<Int>
	}):Icon;
	
	//L.marker([44.8473196,-0.5853868],{icon:icon}).bindPopup(txt).addTo(map);
	public static function marker(coords:Array<Float>, options:{ icon:Icon } ):Marker;
	
	
}

@:native("L.Map")
extern class Map {
	
	public function setView(coords: Array<Float>, zoomLevel:Int):Map;
	public function addLayer(layer:TileLayer):Map;
}

@:native("L.TileLayer")
extern class TileLayer {
	public function new(tileUrl:String, options:{ minZoom:Int,maxZoom:Int,attribution:String } );
}

@:native("L.Icon")
extern class Icon {
	
}




@:native("L.Marker")
extern class Marker {
	public function bindPopup(html:String ):Marker;
	public function addTo(map:Map):Marker;
}