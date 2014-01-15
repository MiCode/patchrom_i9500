.class Lcom/android/settings_ex/guide/BtGuider$1;
.super Ljava/lang/Object;
.source "BtGuider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/guide/BtGuider;->showHelpDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/guide/BtGuider;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/guide/BtGuider;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings_ex/guide/BtGuider$1;->this$0:Lcom/android/settings_ex/guide/BtGuider;

    iput-object p2, p0, Lcom/android/settings_ex/guide/BtGuider$1;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtGuider$1;->val$list:Landroid/widget/ListView;

    const/4 v1, 0x2

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 60
    return-void
.end method
