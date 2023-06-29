namespace Example {
    
    [GtkTemplate (ui = "/org/gtk/Example/ui/window.ui")]
    public class MainWindow : Adw.ApplicationWindow {
        
        public MainWindow(Gtk.Application app) {
            Object(application: app);
        }
    }
}
