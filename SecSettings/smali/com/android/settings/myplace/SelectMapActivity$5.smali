.class Lcom/android/settings_ex/myplace/SelectMapActivity$5;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/myplace/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myplace/SelectMapActivity;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$5;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$5;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$5;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$500(Lcom/android/settings_ex/myplace/SelectMapActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$900(Lcom/android/settings_ex/myplace/SelectMapActivity;Ljava/lang/String;)Z

    .line 399
    return-void
.end method
