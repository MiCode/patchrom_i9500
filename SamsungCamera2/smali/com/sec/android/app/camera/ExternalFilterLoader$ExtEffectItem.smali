.class public Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;
.super Ljava/lang/Object;
.source "ExternalFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ExternalFilterLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtEffectItem"
.end annotation


# instance fields
.field private mEffect:Ljava/lang/String;

.field private mEffectId:I

.field private mFilter:Ljava/lang/String;

.field private mId:I

.field private mPackageName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVendor:Ljava/lang/String;

.field private mVersion:I

.field final synthetic this$0:Lcom/sec/android/app/camera/ExternalFilterLoader;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/ExternalFilterLoader;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "effectId"
    .parameter "vendor"
    .parameter "effect"
    .parameter "filter"
    .parameter "version"
    .parameter "title"
    .parameter "packageName"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->this$0:Lcom/sec/android/app/camera/ExternalFilterLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p2, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mId:I

    .line 162
    iput p3, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mEffectId:I

    .line 163
    iput-object p4, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mVendor:Ljava/lang/String;

    .line 164
    iput-object p5, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mEffect:Ljava/lang/String;

    .line 165
    iput-object p6, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mFilter:Ljava/lang/String;

    .line 166
    iput p7, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mVersion:I

    .line 167
    iput-object p8, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mTitle:Ljava/lang/String;

    .line 168
    iput-object p9, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mPackageName:Ljava/lang/String;

    .line 169
    return-void
.end method


# virtual methods
.method public gerVersion()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mVersion:I

    return v0
.end method

.method public getEffectId()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mEffectId:I

    return v0
.end method

.method public getEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mEffect:Ljava/lang/String;

    return-object v0
.end method

.method public getFiterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mVendor:Ljava/lang/String;

    return-object v0
.end method
