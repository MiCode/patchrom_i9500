.class Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBackGroundUsage"
.end annotation


# instance fields
.field appLastServiceStartTime:J

.field appLastServiceStopTime:J

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationUsage;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/application/ApplicationUsage;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 139
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 141
    iput-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationUsage;Lcom/android/server/enterprise/application/ApplicationUsage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage;)V

    return-void
.end method
