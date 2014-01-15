.class Lcom/android/settings_ex/DisplaySettings$4;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$4;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$4;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/DisplaySettings;->updateAccessControlCheckbox()V

    .line 316
    return-void
.end method
