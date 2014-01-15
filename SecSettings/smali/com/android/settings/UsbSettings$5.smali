.class Lcom/android/settings_ex/UsbSettings$5;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/UsbSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/UsbSettings;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings_ex/UsbSettings$5;->this$0:Lcom/android/settings_ex/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/UsbSettings$5;->this$0:Lcom/android/settings_ex/UsbSettings;

    #getter for: Lcom/android/settings_ex/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/android/settings_ex/UsbSettings;->access$500(Lcom/android/settings_ex/UsbSettings;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/UsbSettings$5;->this$0:Lcom/android/settings_ex/UsbSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/settings_ex/UsbSettings;->switchDisplay(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/UsbSettings;->access$300(Lcom/android/settings_ex/UsbSettings;Z)V

    .line 163
    return-void
.end method
