.class Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings$6;
.super Ljava/lang/Object;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;

    #calls: Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->readServerSettings()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->access$1100(Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;)V

    .line 424
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;

    #calls: Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->fillLayout()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->access$1200(Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;)V

    .line 425
    return-void
.end method
