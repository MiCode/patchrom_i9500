.class Lcom/android/settings_ex/wifi/WifiSecSetupActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSecSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$1;->this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$1;->this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    #calls: Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->access$000(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;Landroid/content/Context;Landroid/content/Intent;)V

    .line 138
    return-void
.end method
