public float opacity = 0.25;
public Texture2D texture;
 
void OnGUI(){
    GUI.color.a = opacity;
    GUI.DrawTexture(new Rect(0,0,Screen.width,Screen.height),texture);
}