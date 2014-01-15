.class Lcom/android/settings_ex/wifi/IwlanEnabler$2;
.super Ljava/lang/Object;
.source "IwlanEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/IwlanEnabler;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/IwlanEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/IwlanEnabler;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/settings_ex/wifi/IwlanEnabler$2;->this$0:Lcom/android/settings_ex/wifi/IwlanEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 412
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 413
    return-void
.end method
