.class Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$5;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)I

    move-result v2

    #calls: Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->getTimeoutValueFromIndex(I)I
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)I

    move-result v1

    #calls: Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->setTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)V

    .line 671
    return-void
.end method
