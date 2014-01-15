.class Lcom/android/settings_ex/samba/SambaEnabler$2;
.super Ljava/lang/Object;
.source "SambaEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/samba/SambaEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/samba/SambaEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/samba/SambaEnabler;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/settings_ex/samba/SambaEnabler$2;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler$2;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #getter for: Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/samba/SambaEnabler;->access$600(Lcom/android/settings_ex/samba/SambaEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 318
    return-void
.end method
