.class public Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;
.super Ljava/lang/Object;
.source "SimeDownloadInfo.java"


# instance fields
.field public dbId:I

.field public fileName:Ljava/lang/String;

.field public percent:I

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->fileName:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->fileName:Ljava/lang/String;

    .line 14
    iput p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->dbId:I

    .line 15
    return-void
.end method
