.class Lcom/android/settings_ex/wifi/WifiEnabler$7;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiEnabler;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiEnabler$7;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler$7;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    const/4 v1, 0x1

    #calls: Lcom/android/settings_ex/wifi/WifiEnabler;->setWifiEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$700(Lcom/android/settings_ex/wifi/WifiEnabler;Z)V

    .line 582
    return-void
.end method
