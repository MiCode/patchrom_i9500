.class Lcom/android/server/ssrm/Monitor$TmuState;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TmuState"
.end annotation


# static fields
.field private static final FIRST_THROTTLING:I = 0x1

.field private static final SECOND_THROTTLING:I = 0x2

.field private static final TRIPPING:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
