.class Lcom/android/settings_ex/myprofile/MyProfileActivity$1;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Lcom/android/settings_ex/myprofile/SpLitColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/myprofile/MyProfileActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myprofile/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myprofile/MyProfileActivity;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity$1;->this$0:Lcom/android/settings_ex/myprofile/MyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity$1;->this$0:Lcom/android/settings_ex/myprofile/MyProfileActivity;

    #getter for: Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->access$000(Lcom/android/settings_ex/myprofile/MyProfileActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "************** Callback from SpLitColorPickerView -> onColorChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity$1;->this$0:Lcom/android/settings_ex/myprofile/MyProfileActivity;

    #calls: Lcom/android/settings_ex/myprofile/MyProfileActivity;->reflectSelectedTextFontColor(I)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->access$100(Lcom/android/settings_ex/myprofile/MyProfileActivity;I)V

    .line 351
    return-void
.end method
