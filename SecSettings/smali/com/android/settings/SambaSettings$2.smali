.class Lcom/android/settings_ex/SambaSettings$2;
.super Ljava/lang/Object;
.source "SambaSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SambaSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SambaSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SambaSettings;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/settings_ex/SambaSettings$2;->this$0:Lcom/android/settings_ex/SambaSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings$2;->this$0:Lcom/android/settings_ex/SambaSettings;

    #getter for: Lcom/android/settings_ex/SambaSettings;->mConfigureDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings_ex/SambaSettings;->access$300(Lcom/android/settings_ex/SambaSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 370
    return-void
.end method
