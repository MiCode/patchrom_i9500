.class Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$1;
.super Ljava/lang/Object;
.source "WifiHiddenApDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    #calls: Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->removeListItems()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->access$000(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)V

    .line 82
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSettings;->updateHiddenAccessPoint()V

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 84
    return-void
.end method
