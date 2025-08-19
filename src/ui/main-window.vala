[GtkTemplate (ui = "/org/gtk/Example/main-window.ui")]
public class MainWindow : Adw.ApplicationWindow {

    public MainWindow(Gtk.Application app) {
        Object(application: app);
    }
}
