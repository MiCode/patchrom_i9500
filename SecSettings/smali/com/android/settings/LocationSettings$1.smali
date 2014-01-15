.class Lcom/android/settings_ex/LocationSettings$1;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/LocationSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/LocationSettings;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/settings_ex/LocationSettings$1;->this$0:Lcom/android/settings_ex/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings$1;->this$0:Lcom/android/settings_ex/LocationSettings;

    #calls: Lcom/android/settings_ex/LocationSettings;->updateLocationToggles()V
    invoke-static {v0}, Lcom/android/settings_ex/LocationSettings;->access$000(Lcom/android/settings_ex/LocationSettings;)V

    .line 257
    return-void
.end method
