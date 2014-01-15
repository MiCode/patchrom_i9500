.class public Lcom/android/settings_ex/samba/ServerReceiver$UsbStorage;
.super Ljava/lang/Object;
.source "ServerReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/samba/ServerReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsbStorage"
.end annotation


# instance fields
.field mounted:Ljava/lang/Boolean;

.field storage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "path"
    .parameter "mount"

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/android/settings_ex/samba/ServerReceiver$UsbStorage;->storage:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/android/settings_ex/samba/ServerReceiver$UsbStorage;->mounted:Ljava/lang/Boolean;

    .line 191
    return-void
.end method


# virtual methods
.method public getMounted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/samba/ServerReceiver$UsbStorage;->mounted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStorage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/samba/ServerReceiver$UsbStorage;->storage:Ljava/lang/String;

    return-object v0
.end method

.method public setMounted(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "mounted"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings_ex/samba/ServerReceiver$UsbStorage;->mounted:Ljava/lang/Boolean;

    .line 203
    return-void
.end method
