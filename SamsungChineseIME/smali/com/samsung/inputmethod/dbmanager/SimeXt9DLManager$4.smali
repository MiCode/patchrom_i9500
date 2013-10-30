.class Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$4;
.super Ljava/lang/Object;
.source "SimeXt9DLManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$4;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$4;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguageListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$400(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$4;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguageListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$400(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;->updated()V

    .line 161
    :cond_0
    return-void
.end method
