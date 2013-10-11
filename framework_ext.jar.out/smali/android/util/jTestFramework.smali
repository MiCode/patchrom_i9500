.class public Landroid/util/jTestFramework;
.super Ljava/lang/Object;
.source "jTestFramework.java"


# static fields
.field public static final TF_EVENT_JAVA:I = 0x20

.field public static final TF_EVENT_JAVA_START:I = 0x8

.field public static final TF_EVENT_JAVA_STOP:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native print_if(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native turnoff()I
.end method

.method public static native turnon()I
.end method

.method public static native write(Ljava/lang/String;)I
.end method

.method public static native write_if(ZLjava/lang/String;)I
.end method
