.class Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JA;
.super Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynamicLCDFPS_JA"
.end annotation


# static fields
.field private static final LCD_FRAME_RATE_PATH:Ljava/lang/String; = "/sys/class/graphics/fb0/lcdfreq/level"


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 0

    .prologue
    .line 2331
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JA;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;-><init>(Lcom/android/server/ssrm/Monitor;)V

    return-void
.end method


# virtual methods
.method protected getSysFSPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2335
    const-string v0, "/sys/class/graphics/fb0/lcdfreq/level"

    return-object v0
.end method
