.class public Lcom/samsung/audio/Smat;
.super Ljava/lang/Object;
.source "Smat.java"


# static fields
.field public static final SMAT_ERR:I = -0x1

.field public static final SMAT_ERR_INSUFF_MEM:I = -0x2

.field public static final SMAT_ERR_NOT_OPEN_FILE:I = -0x7

.field public static final SMAT_ERR_UNSUPPORT:I = -0x3

.field public static final SMAT_EXTRACT_DONE:I = 0x5

.field public static final SMAT_OK:I = 0x0

.field public static final SMAT_QUIT_DONE:I = 0x6

.field public static final SMAT_READY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-string v0, "smata"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native deinit()I
.end method

.method public native extract()I
.end method

.method public native get_info()J
.end method

.method public native get_stat()I
.end method

.method public native init(Ljava/lang/String;I)I
.end method

.method public native is_extractable()Z
.end method

.method public native quit()I
.end method
