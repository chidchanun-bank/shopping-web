import * as React from 'react';
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';

export default function Profile() {
    return (
        <div className='container-card'>
            <div className="title-card">
                <h1>My information</h1>
                <span className='title-line'></span>
            </div>
            <div className="body-card">
                <Box
                    component="form"
                    sx={{
                        '& .MuiTextField-root': { m: 1, width: '25ch' },
                    }}
                    noValidate
                    autoComplete="off"
                >
                    <div>
                        <TextField
                            error
                            id="outlined-error"
                            label="Error"
                            defaultValue="Hello World"
                        />
                    </div>
                </Box>
            </div>
        </div>
    )
}
