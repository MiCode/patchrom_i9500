.class Lcom/android/settings_ex/DreamSettings$1$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DreamSettings$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/DreamSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DreamSettings$1;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings_ex/DreamSettings$1$2;->this$1:Lcom/android/settings_ex/DreamSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings$1$2;->this$1:Lcom/android/settings_ex/DreamSettings$1;

    iget-object v0, v0, Lcom/android/settings_ex/DreamSettings$1;->this$0:Lcom/android/settings_ex/DreamSettings;

    #calls: Lcom/android/settings_ex/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/android/settings_ex/DreamSettings;->access$400(Lcom/android/settings_ex/DreamSettings;)V

    .line 122
    return-void
.end method
