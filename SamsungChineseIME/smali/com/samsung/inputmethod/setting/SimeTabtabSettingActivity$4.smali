.class Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$4;
.super Ljava/lang/Object;
.source "SimeTabtabSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$4;->this$0:Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$4;->this$0:Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->clean()V

    .line 311
    invoke-static {}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwCleanUserData()V

    .line 312
    return-void
.end method