.class Lcom/samsung/inputmethod/setting/SimeSettingActivity$6;
.super Ljava/lang/Object;
.source "SimeSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSettingActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 843
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$6;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$6;->this$0:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->clean()V

    .line 847
    invoke-static {}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwCleanUserData()V

    .line 848
    return-void
.end method
