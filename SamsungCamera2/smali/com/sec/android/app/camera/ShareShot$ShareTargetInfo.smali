.class public Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;
.super Ljava/lang/Object;
.source "ShareShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ShareShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareTargetInfo"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSelected:Z

.field final synthetic this$0:Lcom/sec/android/app/camera/ShareShot;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/ShareShot;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "selected"

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->this$0:Lcom/sec/android/app/camera/ShareShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    iput-object p2, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mId:Ljava/lang/String;

    .line 1071
    iput-object p3, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mName:Ljava/lang/String;

    .line 1072
    iput-boolean p4, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mSelected:Z

    .line 1073
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 1096
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mSelected:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mId:Ljava/lang/String;

    .line 1077
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mName:Ljava/lang/String;

    .line 1081
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1084
    iput-boolean p1, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mSelected:Z

    .line 1085
    return-void
.end method
