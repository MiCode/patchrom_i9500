.class Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$SimeDbAutoUpdateServiceBinder;
.super Landroid/os/Binder;
.source "SimeDbAutoUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimeDbAutoUpdateServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$SimeDbAutoUpdateServiceBinder;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$SimeDbAutoUpdateServiceBinder;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    return-object v0
.end method
