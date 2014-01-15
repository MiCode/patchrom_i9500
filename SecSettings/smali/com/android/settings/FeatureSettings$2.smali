.class Lcom/android/settings_ex/FeatureSettings$2;
.super Ljava/lang/Object;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FeatureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FeatureSettings;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings_ex/FeatureSettings$2;->this$0:Lcom/android/settings_ex/FeatureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings$2;->this$0:Lcom/android/settings_ex/FeatureSettings;

    #getter for: Lcom/android/settings_ex/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/FeatureSettings;->access$500(Lcom/android/settings_ex/FeatureSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 263
    return-void
.end method
