.class Lcom/android/settings_ex/flipfont/FontListActivity$8;
.super Ljava/lang/Object;
.source "FontListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/flipfont/FontListActivity;->badFontDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/flipfont/FontListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/flipfont/FontListActivity;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/settings_ex/flipfont/FontListActivity$8;->this$0:Lcom/android/settings_ex/flipfont/FontListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListActivity$8;->this$0:Lcom/android/settings_ex/flipfont/FontListActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/flipfont/FontListActivity;->onCancelButtonPressed()V

    .line 671
    return-void
.end method
