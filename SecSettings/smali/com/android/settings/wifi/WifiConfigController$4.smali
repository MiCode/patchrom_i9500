.class Lcom/android/settings_ex/wifi/WifiConfigController$4;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiConfigController;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V
    .locals 0

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$4;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController$4;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    #calls: Lcom/android/settings_ex/wifi/WifiConfigController;->restartFocusedViewInput()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$500(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    .line 1662
    return-void
.end method
