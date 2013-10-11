.class public Landroid/app/wallpaperbackup/WallpaperUserPOJO;
.super Ljava/lang/Object;
.source "WallpaperUserPOJO.java"


# instance fields
.field private component:Ljava/lang/String;

.field private height:I

.field private name:Ljava/lang/String;

.field private userId:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "name"
    .parameter "component"
    .parameter "userId"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->width:I

    .line 37
    iput p2, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->height:I

    .line 38
    iput-object p3, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->name:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->component:Ljava/lang/String;

    .line 40
    iput p5, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->userId:I

    .line 41
    return-void
.end method


# virtual methods
.method public getComponent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->component:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->height:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->userId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->width:I

    return v0
.end method

.method public setComponent(Ljava/lang/String;)V
    .locals 0
    .parameter "component"

    .prologue
    .line 18
    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->component:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 10
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->height:I

    .line 11
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 14
    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->name:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 22
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->userId:I

    .line 23
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 6
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->width:I

    .line 7
    return-void
.end method
