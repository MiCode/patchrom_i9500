.class Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$hotWordEditor;
.super Ljava/lang/Object;
.source "SimeDecXT9Chinese.java"

# interfaces
.implements Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "hotWordEditor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$hotWordEditor;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addHotWordToEngin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "phrase"
    .parameter "spell"

    .prologue
    .line 54
    const/4 v1, -0x1

    .line 56
    .local v1, nRet:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$hotWordEditor;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    #getter for: Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;
    invoke-static {v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->access$000(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;)Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->ImXT9AddMdb(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteHotwordFromEngin(Ljava/lang/String;)I
    .locals 3
    .parameter "phrase"

    .prologue
    .line 67
    const/4 v1, -0x1

    .line 69
    .local v1, nRet:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$hotWordEditor;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    #getter for: Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;
    invoke-static {v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->access$000(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;)Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->ImXT9DeleteMdb(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 74
    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public exportHotwords(Ljava/lang/String;)I
    .locals 3
    .parameter "fileName"

    .prologue
    .line 95
    const/4 v1, -0x1

    .line 97
    .local v1, nRet:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$hotWordEditor;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    #getter for: Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;
    invoke-static {v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->access$000(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;)Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->ImXT9ExportMdb(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 102
    :goto_0
    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public importHotwords(Ljava/lang/String;)I
    .locals 3
    .parameter "fileName"

    .prologue
    .line 80
    const/4 v1, -0x1

    .line 81
    .local v1, nRet:I
    if-eqz p1, :cond_0

    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$hotWordEditor;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    #getter for: Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;
    invoke-static {v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->access$000(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;)Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->ImXT9ImportMdb(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public init()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public resetHotwordsInEngin()I
    .locals 3

    .prologue
    .line 108
    const/4 v1, -0x1

    .line 110
    .local v1, nRet:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$hotWordEditor;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    #getter for: Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;
    invoke-static {v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->access$000(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;)Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->ImXT9ResetMdb()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 115
    :goto_0
    return v1

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)I
    .locals 1
    .parameter "lanStr"

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method
