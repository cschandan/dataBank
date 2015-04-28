/**
 * Created by user on 3/12/14.
 */
function url(controller, action, parameterString){
    var urlString = '/Symphonie/' + controller + '/' + action + '/' + parameterString;
    return(urlString);
}