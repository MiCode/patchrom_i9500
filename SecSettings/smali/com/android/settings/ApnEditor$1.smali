.class Lcom/android/settings_ex/ApnEditor$1;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ApnEditor;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ApnEditor;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 958
    return-void
.end method
