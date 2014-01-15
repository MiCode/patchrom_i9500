.class Lcom/android/settings_ex/wifi/Hs20Settings$1;
.super Landroid/content/BroadcastReceiver;
.source "Hs20Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/Hs20Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/Hs20Settings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/Hs20Settings;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings_ex/wifi/Hs20Settings$1;->this$0:Lcom/android/settings_ex/wifi/Hs20Settings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings$1;->this$0:Lcom/android/settings_ex/wifi/Hs20Settings;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings_ex/wifi/Hs20Settings;->handleReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 89
    return-void
.end method
