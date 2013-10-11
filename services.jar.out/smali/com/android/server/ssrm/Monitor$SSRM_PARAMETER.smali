.class public Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSRM_PARAMETER"
.end annotation


# static fields
.field public static MAX_BRIGHTNESS_FOR_BROWSER:I

.field public static MIN_CPU_FREQ_FOR_SCREEN_MIRRORING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 112
    sput v0, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    .line 114
    sput v0, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MIN_CPU_FREQ_FOR_SCREEN_MIRRORING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
