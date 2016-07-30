
/**
 * Leaflet.js externs
 * 
 * @doc http://leafletjs.com/reference.html
 * @doc https://github.com/Leaflet/Leaflet
 * 
 * 
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
	
	public static function marker(coords:Array<Float>, options:{ icon:Icon } ):Marker;
	public static function tileLayer(tileUrl:String, options: { ?minZoom:Int, ?maxZoom:Int, ?attribution:String, ?accessToken:String, ?id:String } ):TileLayer;
	
}

@:native("L.Map")
extern class Map {
	
	public function setView(coords: Array<Float>, zoomLevel:Int):Map;
	public function addLayer(layer:Dynamic):Map;  //can be any ILayer : marker, tileLayer ... http://leafletjs.com/reference.html#ilayer
	public function removeLayer(layer:Dynamic):Map;
	public function on(event:String, callback:Dynamic->Void):Void;
	public function getBounds():LatLngBounds;
	
}


@:native("L.LatLngBounds")
extern class LatLngBounds {
	public function getSouthWest():LatLng;
	public function getNorthEast():LatLng;
}


@:native("L.LatLng")
extern class LatLng {
	public var lat:Float;
	public var lng:Float;
}

@:native("L.TileLayer")
extern class TileLayer {
	public function new(tileUrl:String, options: { ?minZoom:Int, ?maxZoom:Int, ?attribution:String,?accessToken:String,?id:String } );
	public function addTo(map:Map):TileLayer;
	
}

@:native("L.Icon")
extern class Icon {
	
}




@:native("L.Marker")
extern class Marker extends js.html.EventTarget{
	public function bindPopup(html:String ):Marker;
	public function addTo(map:Map):Marker;
}