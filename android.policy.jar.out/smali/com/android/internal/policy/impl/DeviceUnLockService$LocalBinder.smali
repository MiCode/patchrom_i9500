.class public Lcom/android/internal/policy/impl/DeviceUnLockService$LocalBinder;
.super Landroid/os/Binder;
.source "DeviceUnLockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DeviceUnLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/DeviceUnLockService;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$LocalBinder;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalAppMainService()Lcom/android/internal/policy/impl/DeviceUnLockService;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$LocalBinder;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    return-object v0
.end method
