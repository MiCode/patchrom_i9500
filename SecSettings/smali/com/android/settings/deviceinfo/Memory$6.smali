.class Lcom/android/settings_ex/deviceinfo/Memory$6;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/Memory;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$6;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory$6;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #calls: Lcom/android/settings_ex/deviceinfo/Memory;->doUnmount()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/Memory;->access$100(Lcom/android/settings_ex/deviceinfo/Memory;)V

    .line 300
    return-void
.end method
