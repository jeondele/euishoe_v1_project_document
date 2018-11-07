# euishoe_project
하나금융티아이 쇼핑몰 팀프로젝트

## Git Rule  
### feature개발  
- [깃플로우 -> 새기능 시작]을 통해 기능 브랜치 생성및 체크아웃    
- 기능구현 동안 의미있는 커밋 수시로 진행(push X, 커밋메시지 제대로 적기)  
- 기능구현이 완료하는 커밋까지 수행 후, develop브랜치에서 pull request생성  
- web에서 생성한 pull request를 보며 본인 코드와 충돌나는부분을 확인, 수정 후 본인의 pull request는 본인이 merge하고 충돌해결  
- pull request승인, pull까지 완료 후, [깃플로우 -> 기능마무리]진행  
- 충돌없이 마무리되면 기능브랜치 삭제  

### release시점
> release는 배포가능 시점이나, 본 프로젝트는 작은 규모이므로 구성원 협의하에 release의 시점을 임으로 정함  
-   

### branch naming  
- feature
> 기능명(도메인)_닉네임  
> ex) login(customer)_sw  

- hotfix  
> 기능명_닉네임
> login_sw  
